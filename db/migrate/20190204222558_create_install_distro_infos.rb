class CreateInstallDistroInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :install_distro_infos do |t|
      t.references :people, foreign_key: true
      t.references :trouble, foreign_key: true
      t.references :distro, foreign_key: true
      t.boolean :installed, default: false

      t.timestamps
    end
  end
end
