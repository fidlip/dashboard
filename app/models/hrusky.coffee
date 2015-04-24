`
  import DS from "ember-data";
`

Model = DS.Model.extend
  hrusky: DS.attr "string"

Model.reopenClass
  FIXTURES: [
    id: 0
    hrusky: "Waiting for data ..."
  ]

`export default Model;`
