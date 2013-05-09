-- TDD style
suite = describe
test  = it

dashes = require 'dashes'

suite 'Dash replacement', ->
  test 'with no n-dashes', ->
    line = "But what about the moving--"
    res  = "But what about the moving—"
    assert.equals (dashes.mdash line), res

  test 'with n-dashes', ->
    line = "B-- But what about the moving---"
    res  = "B– But what about the moving—"
    assert.equals (dashes.ndash line), res