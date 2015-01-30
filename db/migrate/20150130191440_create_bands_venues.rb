class CreateBandsVenues < ActiveRecord::Migration
  def change
    create_table(:bands_venues) do |t|
      t.column(:bands_id, :integer)
      t.column(:venues_id, :integer)
    end
  end
end
