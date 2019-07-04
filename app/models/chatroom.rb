class Chatroom < ApplicationRecord
    has_many :chats
    belongs_to :manager, class_name: 'User', foreign_key: user_id
end
