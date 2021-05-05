class Room < ApplicationRecord
  has_many :chats
  has_many :user_rooms
end
#1つのルームにいるユーザーの数は2人のためhas_manyになる
