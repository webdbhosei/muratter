App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    window.location.reload(true)

  put_message: (msg, room) ->
    @perform('put_message', {message: msg, room_id:room})
    return
