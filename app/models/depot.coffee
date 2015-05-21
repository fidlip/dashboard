`
  import DS from "ember-data";
`

Model = DS.Model.extend
  countOfPackets: DS.attr "string"

  branch: DS.belongsTo "branch"


#Model.reopenClass
#  FIXTURES: [
#    { id: "zilina", branch: "zilina", countOfPackets: 159 }
#  ]

`export default Model;`
