class AddPropertyTypeToTownhouseArea < ActiveRecord::Migration[5.2]
  def change
    add_column :townhouse_areas, :property_type, :string, default: 'shared'
  end
end
