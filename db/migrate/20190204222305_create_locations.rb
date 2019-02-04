class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.references :city, foreign_key: true
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
