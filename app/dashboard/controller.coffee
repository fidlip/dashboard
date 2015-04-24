`import Ember from 'ember';`

Controller = Ember.Controller.extend
  init: ->
    @_super()

    request =
      url: "WS://localhost:8080/dashboard/atm/feed/user3"
      contentType: "application/json"
      logLevel: 'debug'
      transport: 'websocket'
      fallbackTransport: 'long-polling'
      onOpen: (response)=>
        console.info('SocketConnected:', response)

      onMessage: (response)=>
        @parseMessage(response.responseBody)

      onError: (response)=>
        console.error("SocketError:", response)

      onClose: (response)=>
        console.info("SocketClosed:", response)


    subSocket = atmosphere.subscribe(request)


  parseMessage: (message)->
    try
      json = atmosphere.util.parseJSON(message.substring(3))
      if json
        json.jabka && @actualizeData("jabka", json.jabka)
        json.hrusky && @actualizeData("hrusky", json.hrusky)

        @store.find("jabka").then (jabka)=>
          @set("model.jabka", jabka)
        @store.find("hrusky").then (hrusky)=>
          @set("model.hrusky", hrusky)

    catch e
      console.error(e)
      return

  actualizeData: (model, data)->
    @store.findById(model, 0).then (item)->
      item.setProperties(data)


`export default Controller;`
