// Generated by CoffeeScript 1.10.0
(function() {
  var app, request;

  request = require('supertest');

  app = require('./app');

  describe('Requests to the root path', function() {
    it('Returns a 200 status code', function(done) {
      return request(app).get('/').expect(200).end(function(error) {
        if (error) {
          throw error;
        }
        return done();
      });
    });
    it('Returns HTML Format', function(done) {
      return request(app).get('/').expect('Content-Type', /html/, done());
    });
    return it('Returns an index file with Cities', function(done) {
      return request(app).get('/').expect(/cities/i, done());
    });
  });

  describe('Listing cities on /cities', function() {
    it('Returns a 200 status code', function(done) {
      return request(app).get('/cities').expect(200, done());
    });
    it('Returns JSON Format', function(done) {
      return request(app).get('/cities').expect('Content-Type', /json/, done());
    });
    return it('Returns Inital Cities', function(done) {
      return request(app).get('/cities').expect(JSON.stringify(['Beijing', 'Shanghai', 'SF']), done());
    });
  });

}).call(this);
