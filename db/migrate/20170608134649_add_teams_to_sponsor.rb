class AddTeamsToSponsor < ActiveRecord::Migration[5.0]
  def change
    add_column :sponsors, :team_id, :has_many
  end
end
