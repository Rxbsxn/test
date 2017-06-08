class AddSponsorsToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :sponsor_ids, :has_many
  end
end
