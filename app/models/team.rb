class Team < ApplicationRecord
  has_many :sponsors
  has_many :players

  accepts_nested_attributes_for :sponsors
  validates :name, presence: true
end
