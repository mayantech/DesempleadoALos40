class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.string :name, limit: 128, null: false

      t.timestamps
    end
    add_index :professions, :name, unique: true
  end
end
