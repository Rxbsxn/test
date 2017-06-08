class Sponsor < ApplicationRecord
  has_many :teams, through: :teamsponsors
  validates :name, presence: true
end
