`
  import DS from "ember-data";
`

Model = DS.Model.extend
  command: DS.attr "string"
  user: DS.attr "string"


`export default Model;`
