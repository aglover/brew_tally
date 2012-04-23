require 'should'
require 'mocha'
dynode = require 'dynode'


describe 'Working with Dynode should be easy!', ->
	beforeEach ->
		dynode.auth({accessKeyId: process.env.ACCESSKEY, secretAccessKey: process.env.SECRETKEY})
		
	describe 'Dynode should support describing a DynamoDB table', ->
		it 'should return an array with table names', (done) ->
			dynode.listTables {}, (err, tables) ->
				tables.TableNames.should.not.be.empty
				done(err)
				
	describe 'updates for a beer using DynamoDB API', ->
		before (done) ->
			update = {votes: {add : 1}, type: {put: 'IPA'}}
			dynode.updateItem 'beer_ratings', '60 Minute IPA', update, (err, resp) ->
				done(err)
		it 'should support incrementing a value corresponding to a vote', (done) ->
			dynode.getItem 'beer_ratings', '60 Minute IPA', (err, item, meta) ->
				item.should.have.property 'votes'
				item.votes.should.be.above 1
				done(err)
		after ->
			update = {votes: {put : 1}, type : {put: 'IPA'}}
			dynode.updateItem 'beer_ratings', '60 Minute IPA', update, (err, resp) ->
				
	describe 'scanning for all beers', ->
		it 'should support a simple API for obtaining all items from a table using DynamoDB scann API', (done) ->
			dynode.scan 'beer_ratings', (err, items, meta) ->
				items.length.should.be.above 3
				for beer in items
					beer.should.have.property 'votes'
					beer.should.have.property 'name'
					beer.should.have.property 'type'
				done(err)