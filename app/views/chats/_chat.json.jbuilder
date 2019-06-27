json.extract! chat, :id, :content, :user_id, :chatroom_id, :chat_at, :created_at, :updated_at
json.url chat_url(chat, format: :json)
