class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :name, null:false
      t.references :townhouse_area, foreign_key: true
      t.string :document, null:false, index: true
      t.string :email, null:false

      t.timestamps
    end
  end
end
