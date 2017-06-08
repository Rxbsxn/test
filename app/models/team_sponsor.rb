class TeamSponsor < ApplicationRecord
  belongs_to :sponsor
  belongs_to :team
end
