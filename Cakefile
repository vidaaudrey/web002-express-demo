{exec} = require 'child_process'
task 'sbuild', 'Build project from coffee/*.coffee to ./*.js', ->
  exec 'coffee -o ./ -wc coffee', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr