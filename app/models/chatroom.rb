class Chatroom < ApplicationRecord
    has_many :chats
    has_many :joins
end
