class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.references :location, foreign_key: true
      t.references :event, foreign_key: true
      t.string :age
      t.references :gender, foreign_key: true

      t.timestamps
    end
  end
end
