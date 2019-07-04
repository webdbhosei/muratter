class Chatroom < ApplicationRecord
    has_many :chats
    # belongs_to :manager_id, class_name: 'User', foreign_key: :user_id
end
