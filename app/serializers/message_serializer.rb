class MessageSerializer < ActiveModel::Serializer
    belongs_to :sender
    belongs_to :reciever
    attributes :id, :message_content, :sender_id, :reciever_id, :sender, :reciever, :created_at
    
  end