

require './globals.coffee'
express = require 'express'
path = require 'path'
fs = require 'fs'
http = require 'http'

app_one = express()

app_one.use express.static(path.resolve(__dirname, '..', 'app_one', 'dist'))

app_one_server = http.createServer app_one

port = 8000

app_one_server.listen port, ->
    c "Server listening on port: #{color.cyan(port, on)}"
