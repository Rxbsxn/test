class CreateTeamSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :team_sponsors do |t|
      t.belongs_to :team, index: true
      t.belongs_to :sponsor, index: true

      t.timestamps
    end
  end
end
