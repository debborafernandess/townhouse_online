class AddTownhouseAreaReferencesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :townhouse_area, foreign_key: true
  end
end
