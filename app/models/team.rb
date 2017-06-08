class Team < ApplicationRecord
  has_many :sponsors. through: :teamsponsors
  has_many :players

  validates :name, presence: true
end
