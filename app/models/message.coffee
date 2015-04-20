`
  import DS from "ember-data";
`

Model = DS.Model.extend
  author: DS.attr "string"
  command: DS.attr "string"

  jablka: DS.attr  "string"
  hrusky: DS.attr  "string"

  time: DS.attr "number"

Model.reopenClass
  FIXTURES: []

`export default Model;`
