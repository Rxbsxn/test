class AddSponsorsToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :sponsor_id, :has_many
  end
end
