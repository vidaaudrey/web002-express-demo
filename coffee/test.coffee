request = require 'supertest'
app = require './app'
request app
    .get '/'
    .expect(200)
    .end (error) ->
        throw error if error 
        console.log 'Done'