`
  import Ember from 'ember'
`

Route = Ember.Route.extend

    logged: false

    model: ->
      { depot: @store.find("depot") }
#      return @store.findAll("message")




`export default Route;`