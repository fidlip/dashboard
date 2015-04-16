`import DndPane from '../dnd-pane/component';`

Component = DndPane.extend
  classNames: ["widget-stack"]

  classNameBindings: ["collapsed"]

  collapsed: true
  collapseButtonText: (->
    if @get("collapsed") then "<<" else ">>"
  ).property("collapsed")


  actions:
    toggleCollapsed: ->
      @toggleProperty("collapsed")

`export default Component;`
