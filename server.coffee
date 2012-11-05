connect = require 'connect'
http = require 'http'
path = require 'path'

startServer = (port, publicPath, onListeningCallback) ->
  app = connect()

  app.use connect.favicon()
  app.use connect.logger('dev')
  app.use connect.bodyParser()
  app.use connect.methodOverride()
  app.use connect.cookieParser('super secret codez')
  app.use connect.session()

  app.use connect.static(path.join(__dirname, publicPath))

  app.use connect.errorHandler()

  server = http.createServer(app)

  server.listen port, onListeningCallback

  server

exports.startServer = startServer