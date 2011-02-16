class CreateMotorcycles < ActiveRecord::Migration
  def self.up
    create_table :motorcycles do |t|
      t.string "manufacturer", :null => false
      t.string "model", :null => false
      t.integer "displacement", :null => false, :limit => 5
      t.integer "year", :null => false, :limit => 4
      t.integer "price", :null => false
      t.string "color"
      t.string "description"
      t.string "city", :null => false
      t.integer "mileage"
      t.timestamps
    end
  end

  def self.down
    drop_table :motorcycles
  end
end
