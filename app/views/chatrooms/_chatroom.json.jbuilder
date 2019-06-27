json.extract! chatroom, :id, :name, :manager_id, :parent_id, :created_at, :updated_at
json.url chatroom_url(chatroom, format: :json)
