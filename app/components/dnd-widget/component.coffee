`import Ember from 'ember';`

Component = Ember.Component.extend
  classNames: ["dnd-widget", "ui-widget", "ui-widget-content", "ui-helper-clearfix", "ui-corner-all", "ui-state-default" ]

  init: ->
    @_super()
    @on "didInsertElement", ->
      @$(".dnd-widget-toggle").click =>
        @removeFromParent()
        #@$(".dnd-widget-toggle").toggleClass("ui-icon-minusthick ui-icon-plusthick")
        #@$(".dnd-widget-content").toggle()



`export default Component;`
