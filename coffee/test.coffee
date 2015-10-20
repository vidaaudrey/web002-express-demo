request = require 'supertest'
app = require './app'

describe 'Requests to the root path', ->
    it 'Returns a 200 status code', ->
        request app
            .get '/'
            .expect(200)
            .end (error) ->
                throw error if error 
                done()
        