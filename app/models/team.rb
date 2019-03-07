class Team < ApplicationRecord
    has_many :UserTeams
    has_many :users, through: :UserTeams
end
