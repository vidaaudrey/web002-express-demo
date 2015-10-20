express = require 'express'
app = express()

app.use express.static __dirname + '/public'

app.get '/', (req, res)->
    # throw 'Error'
    res.end 'Hello world, using nodemon, livereload'
    # res.end '<script type="text/javascript" src="http://www.xiami.com/widget/player-multi?uid=10123092&sid=130816,3510910,2840536,3501497,1961127,1961579,1769602298,3405574,1769602297,1961009,3405569,&width=235&height=346&mainColor=cccccc&backColor=dddddd&autoplay=1&mode=js"></script>'

app.get '/cities', (req, res)->
    cities = ['Beijing','Shanghai', 'SF', "NY"]
    res.json cities



#for testing, we'll export app and move the port listening to bin/www
module.exports = app 

#app.listen 3000, ()->
 #   console.log 'listening to 3000'