module.exports = (app) ->
	app.get '/', (req, res) ->
		res.render "#{dir}/index.html"