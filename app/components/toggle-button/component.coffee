`import Ember from 'ember';`

Component = Ember.Component.extend
  tagName: "button"
  classNames: ["toggle-button", "ui-button", "ui-widget", "ui-state-default", "ui-corner-all", "ui-button-text-only"]

  toggledOn: false

  click: ->
    @toggleProperty("toggledOn")
    @sendAction("action", @get("toggledOn"))

`export default Component;`
