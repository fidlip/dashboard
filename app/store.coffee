`
  import DS from 'ember-data';
  import config from './config/environment';
`

#command_id = 0

Store = DS.Store.extend

  findAll: (type)->

    ret = @_super.apply(@, arguments)
    console.info("findAll ", type, ", ret=", ret)
    ret.then? (data)->
      console.info("findAll ", type, ", data=", data)

    return ret

  init: ->
    @_super()

    #handle atmosphere messages
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
#        if json.command
#          json.command.id = command_id++

        @pushPayload(json)

    catch e
      console.error("Parse error:", e)
      return

  onError: (response)->
    console.error("SocketError:", response)

  onClose: (response)->
    console.warn("SocketClosed:", response)






`export default Store;`
