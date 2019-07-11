class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat:message"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def put_message(data)
    chat_param = {
      :user_id => current_user.id,
      :content => data['message'],
      :chat_at => Time.now,
      :chatroom_id => data['room_id']
    }
    chat = Chat.new(chat_param)
    chat.save

    ChatChannel.broadcast_to('message', data['message'])
  end
end
