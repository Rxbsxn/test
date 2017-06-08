class Sponsor < ApplicationRecord
  has_many :team_sponsors
  has_many :teams, through: :team_sponsors
  validates :name, presence: true
end
