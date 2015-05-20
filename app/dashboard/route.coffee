`
  import Ember from 'ember'
`

Route = Ember.Route.extend

    logged: false

    model: ->
      { depot: @store.find("depot"), branches: @store.find("branch"), commands: @store.find("command") }
#      return @store.findAll("message")




`export default Route;`