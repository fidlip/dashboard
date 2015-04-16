`import Ember from 'ember';`

Component = Ember.Component.extend
  classNames: ["dnd-pane"]

  sortable: undefined
  connectedWith: undefined
  axis: undefined

  init: ->
    @_super()
    @on "didInsertElement", ->
      $ = @$()
      @set "sortable", $.sortable
        appendTo: ".dashboard"
        helper: "clone"
        axis: @get("axis")
        connectWith: @get("connectedWith")
        items: ">.content>*"
        handle: ".dnd-widget-header"
        cancel: ".dnd-widget-toggle"
        placeholder: "dnd-widget-placeholder ui-corner-all"
        forcePlaceholderSize: true
        scroll: false
        cursor: "move"
        tolerance: "pointer"
        zIndex: 99999

      $.disableSelection()

`export default Component;`
