###global require, __dirname, process###

((express, dir, port = 3005) ->
	dir += '/dist'

	app = express.createServer()

	getUrl = ->
		"http://localhost:#{app.address().port}"

	open = (command = 'open') ->
		url = getUrl()
		ostype = require('os').type()
		command = 'explorer' if ostype is 'Windows_NT'
		spawn = require('child_process').spawn

		console.log "launching #{url}"

		spawn command, [url]

	app.configure ->
		app.set 'view options',
			layout: false

		app.use express.bodyParser()
		app.use express.static(dir)
		app.use app.router

		app.register '.html',
			compile: (str, options) ->
				(locals) ->
					str

		app.get '/', (req, res) ->
			res.render "#{dir}/index.html"

		app.listen port, ->
			console.log "open your browser to the url below"
			console.log getUrl()
			#open()
)(require('express'), __dirname, process.argv.splice(2)[0])