`import Ember from 'ember';`

Component = Ember.Component.extend
  classNames: ["ui-widget"]

  init: ->
    @_super()

  actions:
    addBranch: ->
      branch = @$("#branch option:selected")
      @sendAction("addBranch", branch?.val())


`export default Component;`
