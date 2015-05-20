`
  import Ember from 'ember';
  import config from 'dashboard/config/environment'
`

Controller = Ember.Controller.extend

  init: ->
    @_super()


  actions:
    addBranch: (branch)->
      console.info("addBranch", branch)
      $.getJSON config.rest.url + "/subscribe/" + branch + "/user3", (data)->
        console.info("branch added", data)


`export default Controller;`
