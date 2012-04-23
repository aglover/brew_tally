require 'should'
require 'mocha'
dynode = require 'dynode'
app = require '../../App'
http = require 'http'

describe 'Working with an Express web app', ->
	describe 'hitting GET with beer name should produce a JSON document as a response', ->
		it 'should respond with JSON document', (done) ->
			http.get {host: 'localhost', port: 3000, path: '/Guinness'}, (res) ->
				responseBody = ''
				res.on 'data', (chunk) ->
					responseBody += chunk.toString()
					
				res.on 'end', ->
					responseBody.should.match /votes/
					done()
