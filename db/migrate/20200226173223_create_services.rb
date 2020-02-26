class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.text :description
      t.string :name
      t.decimal :price
      t.string :city
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
