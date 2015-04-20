`import Ember from 'ember';`

Controller = Ember.Controller.extend
  init: ->
    @_super()

    request =
      url: "WS://localhost:8080/springrest/atm/feed/user3"
      contentType: "application/json"
      logLevel: 'debug'
      transport: 'websocket'
      fallbackTransport: 'long-polling'
      onOpen: (response)=>
        console.info('SocketConnected:', response)

      onMessage: (response)=>
        message = response.responseBody
        try
          json = atmosphere.util.parseJSON(message.substring(3))
          if json
            json.id = json.dataType
            @store.push("message", json)
            @store.find("message").then (messages)=>
              console.info("messages", messages)
              @set("model", {general: messages.content[0], jablka: messages.content[1], hrusky: messages.content[2]})
              console.info("model=", @get("model"))
        catch e
          console.error(e)
          return

      onError: (response)=>
        console.error("SocketError:", response)

      onClose: (response)=>
        console.warn("SocketClosed:", response)


    subSocket = atmosphere.subscribe(request)



`export default Controller;`
