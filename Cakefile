{exec} = require 'child_process'

task 'build', 'Build project from src/*.coffee to root/*.js', ->
  exec 'coffee --compile --output ./ src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr