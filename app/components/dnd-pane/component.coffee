`import Ember from 'ember';`

Component = Ember.Component.extend
  classNames: ["dnd-pane"]

  init: ->
    @_super()
    @on "didInsertElement", ->
      @$().sortable
        handle: ".dnd-widget-header",
        cancel: ".dnd-widget-toggle",
        placeholder: "dnd-widget-placeholder ui-corner-all"
        forcePlaceholderSize: true
      @$().disableSelection()

`export default Component;`
