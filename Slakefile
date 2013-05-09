require 'shelljs/global'
require! <[ gaze charm ]>

charm = charm process.stdout

task \build 'Compile *.moon files to lib/*.lua' !->
  exec 'moonc -t lib *.moon'

task \test 'Run unit tests with busted.' !->
  invoke \build
  exec   \busted

task \watch 'Watch, compile and test files.' !->
  do action = !->
    charm.reset!
    invoke \test

  <-! gaze '**/*.moon'

  # throw errors
  throw it if it?

  @on \all action




