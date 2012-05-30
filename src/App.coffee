express = require 'express'
dynode = require 'dynode'

dynode.auth({ accessKeyId: process.env.ACCESSKEY, secretAccessKey: process.env.SECRETKEY })

app = express.createServer express.logger()
app.use express.bodyParser()

app.set 'view engine', 'jade'
app.use '/css', express.static(__dirname + '/css')
app.use '/images', express.static(__dirname + '/images')

app.get '/', (req, res) ->
	dynode.scan 'beer_ratings', (err, items, meta) ->
		if err
			res.send JSON.stringify {status: "failure"}
		else
			res.render 'index', {beers:items}

app.get '/:beer_name', (req, res) ->
	beer_name = req.params.beer_name
	dynode.getItem('beer_ratings', beer_name, (err, item, meta) ->
		if err
			res.send JSON.stringify {status: "failure"}
		else
			res.send item
	)

app.put '/style/:style', (req, res) ->
	update = {votes: {add : 1}, type: {put : req.params.style}}
	beer_name = req.body.beer_name
	dynode.updateItem('beer_ratings', beer_name, update, (err, resp) ->
		if err
			res.send JSON.stringify {status: "failure"}
		else
			res.send JSON.stringify {status: "success"}
	)

port = process.env.PORT or 3000

app.listen port, ->
	console.log "listening on #{port}"