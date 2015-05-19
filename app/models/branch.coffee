`
  import DS from "ember-data";
`

Model = DS.Model.extend
  id: DS.attr "string"
  countOfPackets: DS.attr "number"

Model.reopenClass
  FIXTURES: [
  ]

`export default Model;`
