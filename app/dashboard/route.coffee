`
  import Ember from 'ember'
`

Route = Ember.Route.extend

    logged: false

    model: ->
      {jabka: @store.find("jabka"), hrusky: @store.find("hrusky")}
#      return @store.findAll("message")




`export default Route;`