request = require 'supertest'
app = require './app'

describe 'Requests to the root path', ->
    it 'Returns a 200 status code',(done) ->
        request app
            .get '/'
            .expect(200)
            .end (error) ->
                throw error if error 
                done()

    it 'Returns HTML Format', (done)->
        request app
            .get '/'
            .expect 'Content-Type', /html/, done()

    it 'Returns an index file with Cities', (done)->
        request app
            .get '/'
            .expect /cities/i, done()
    

describe 'Listing cities on /cities', ->
    it 'Returns a 200 status code', (done)->
        request app
            .get '/cities'
            .expect 200, done()

    it 'Returns JSON Format', (done)->
        request app
            .get '/cities'
            .expect 'Content-Type', /json/, done()
                
     it 'Returns Inital Cities', (done)->
         request app
             .get '/cities'
             .expect JSON.stringify(['Beijing','Shanghai', 'SF']), done()


  
        