class CreateDistros < ActiveRecord::Migration[5.2]
  def change
    create_table :distros do |t|
      t.string :name
      t.references :package, foreign_key: true
      t.text :description
      t.string :version

      t.timestamps
    end
  end
end
