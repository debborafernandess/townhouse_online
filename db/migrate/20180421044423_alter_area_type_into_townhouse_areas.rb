class AlterAreaTypeIntoTownhouseAreas < ActiveRecord::Migration[5.2]
  def change
    change_column :townhouse_areas, :area_type, :string, default: 'tower'
  end
end
