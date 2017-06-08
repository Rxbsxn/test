class Team < ApplicationRecord
  has_many :team_sponsors
  has_many :sponsors, through: :team_sponsors
  has_many :players

  validates :name, presence: true
end
