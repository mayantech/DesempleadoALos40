class AddAttachmentPictureEventToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :picture_event
    end
  end

  def self.down
    remove_attachment :events, :picture_event
  end
end
