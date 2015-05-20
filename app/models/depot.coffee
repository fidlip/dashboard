`
  import DS from "ember-data";
`

Model = DS.Model.extend
  countOfPackets: DS.attr "number"

  branch: DS.belongsTo "branch", { async: true }


#Model.reopenClass
#  FIXTURES: [
#    { id: "zilina", branch: "zilina", countOfPackets: 159 }
#  ]

`export default Model;`
