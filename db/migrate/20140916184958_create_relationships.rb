class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :person_id
      t.text :message

      t.timestamps
    end
  end
end
