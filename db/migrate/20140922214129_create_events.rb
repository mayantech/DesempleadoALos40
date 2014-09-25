class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :event_date
      t.string :event_title, limit: 256
      t.text :event_description
      t.string :place_event, limit: 256
      t.text :agenda_event
      t.string :picture_event
      t.string :url

      t.timestamps
    end
  end
end
