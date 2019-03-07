class UserSerializer < ActiveModel::Serializer
    has_many :sent_messages
    has_many :recieved_messages
    #has_many :UserTeams
    #has_many :teams, through: :UserTeams
    has_many :teams
    attributes :id, :name, :level, :city, :zipcode, :imageurl, :created_at, :sent_messages, :recieved_messages, :teams
    
  end