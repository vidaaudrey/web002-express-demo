express = require 'express'
app = express()

app.get '/', (req, res)->
    res.end 'Hello world, using nodemon'

#for testing, we'll export app and move the port listening to bin/www
module.exports = app 

#app.listen 3000, ()->
 #   console.log 'listenning to 3000'

