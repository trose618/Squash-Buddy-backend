class User < ApplicationRecord
  has_many :sent_messages, class_name: :Message, foreign_key: :sender_id
  has_many :recieved_messages, class_name: :Message, foreign_key: :reciever_id
  has_many :UserTeams
  has_many :teams, through: :UserTeams

  def sendMessage(reciever_id, message)
    Message.create!({sender_id: self.id, reciever_id: reciever_id, message_content: message})
  end
end

