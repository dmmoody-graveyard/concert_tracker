class FixColumnNames < ActiveRecord::Migration
  def change
    def self.up
      rename_column :bands_venues, :bands_id, :band_id
    end

    def self.down
      rename_column :bands_venues, :venue_id, :venue_id
    end
  end
end
