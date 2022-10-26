class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user
  has_many_attached :photos

  def sender?(a_user)
    user.id == a_user.id
  end
end
