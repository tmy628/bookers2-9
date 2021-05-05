class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room
end
# user_roomsテーブルはusersテーブルとroomsテーブルの中間テーブル　ユーザーとルームの紐づけを行う
# 外部キーとしてuser_idとroom_idを持っている
# ユーザーにどのroom_idが紐づいているか、ルームにどのuser_idが紐づいているか