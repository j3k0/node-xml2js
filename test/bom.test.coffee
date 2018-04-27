xmljs2 = require '../lib/xmljs2'
assert = require 'assert'
equ = assert.equal

module.exports =
  'test decoded BOM': (test) ->
    demo = '\uFEFF<xml><foo>bar</foo></xml>'
    xmljs2.parseString demo, (err, res) ->
      equ err, undefined
      equ res.xml.foo[0], 'bar'
      test.done()
