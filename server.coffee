###global require, __dirname, process###

((express, dir, port = 3005) ->
	dir += '/dist'

	app = express.createServer()

	getUrl = ->
		"http://localhost:#{port}"

	app.configure ->
		app.set 'view options',
			layout: false

		app.use express.bodyParser()
		app.use express.static dir
		app.use app.router

		app.engine '.html', (str, options) ->
			(locals) ->
				str

		app.get '/', (req, res) ->
			res.render "#{dir}/index.html"

		app.listen port, ->
			console.log "open your browser to the url below"
			console.log getUrl()

)(require('express'), __dirname, process.argv.splice(2)[0])