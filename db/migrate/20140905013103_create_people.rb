class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nit, limit: 32
      t.string :names, limit: 128
      t.string :last_name, limit: 128
      t.string :last_name_married, limit: 128
      t.date :born_date
      t.string :profession, limit: 128
      t.string :career_title, limit: 128
      t.string :gender, limit: 32
      t.string :status, limit: 128
      t.string :personal_mail, limit: 128
      t.string :home_phone, limit: 32
      t.string :mobile, limit: 32
      t.string :facebook, limit: 256
      t.string :linkedin, limit: 256
      t.string :twitter, limit: 256
      t.string :google, limit: 256
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  end
end
