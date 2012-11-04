express = require 'express'
http = require 'http'
path = require 'path'

startServer = (port, publicPath, onListeningCallback) ->
  app = express()

  app.configure ->
    app.set 'port', port

    app.use express.favicon()
    app.use express.logger 'dev'
    app.use express.bodyParser()
    app.use express.methodOverride()
    app.use express.cookieParser 'super secret codez'
    app.use express.session()
    app.use app.router

    app.use express.static path.join __dirname, publicPath

    app.use express.errorHandler()

  server = http.createServer app

  server.listen app.get('port'), onListeningCallback

  server

exports.startServer = startServer