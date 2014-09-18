class CreateProfessionalUpgrades < ActiveRecord::Migration
  def change
    create_table :professional_upgrades do |t|
      t.integer :user_id
      t.string :year, limit: 4
      t.string :institution, limit: 256
      t.text :upgrade
      t.string :academic_title, limit: 256
      t.integer :country_id

      t.timestamps
    end
  end
end
