`
  import DS from "ember-data";
`

Model = DS.Model.extend
  jabka: DS.attr "string"

Model.reopenClass
  FIXTURES: [
    id: 0
    jabka: "Waiting for data ..."
  ]

`export default Model;`
