class Player < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :born, presence: true
end
