class TeamSerializer < ActiveModel::Serializer
    #has_many :UserTeams
    #has_many :users, through: :UserTeams
    has_many :users, only: [:id, :name]
    attributes :id, :name, :users
    
  end