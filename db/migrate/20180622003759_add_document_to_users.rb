class AddDocumentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :document, :string

    add_index :users, :document, unique: true
  end
end
