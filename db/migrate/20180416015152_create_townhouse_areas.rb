class CreateTownhouseAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :townhouse_areas do |t|
      t.string :name
      t.integer :area_type

      t.timestamps
    end
  end
end
