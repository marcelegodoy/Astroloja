class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :description, :string
    add_column :users, :city, :string
    add_reference :users, :state, foreign_key: true
  end
end
