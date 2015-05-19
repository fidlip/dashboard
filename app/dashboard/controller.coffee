`
  import Ember from 'ember';
  import config from 'dashboard/config/environment'
`

Controller = Ember.Controller.extend

  init: ->
    @_super()

    request = Ember.$.extend {}, config.atmosphere,
      url: config.atmosphere.url + "user3"

      onOpen: @onOpen.bind(@)
      onMessage: @onMessage.bind(@)
      onError: @onError.bind(@)
      onClose: @onClose.bind(@)

    subSocket = atmosphere.subscribe(request)

  onOpen: (response)->
    console.info('SocketConnected:', response)

  onMessage: (response)->
    message = response.responseBody
    try
      console.info("message =", message)
      json = atmosphere.util.parseJSON(message)
    catch e
      console.error("Parse error:", e)
      return

    try
      console.info("json =", json)
      if json
        if json.depot
          @store.push("depot", json.depot)
    catch e
      console.error("Parse error:", e)
      return

  onError: (response)->
    console.error("SocketError:", response)

  onClose: (response)->
    console.warn("SocketClosed:", response)

`export default Controller;`
