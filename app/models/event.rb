class Event < ActiveRecord::Base
	has_attached_file :picture_event, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :picture_event, :content_type => %w(image/jpeg image/jpg image/png)
	has_many :user_events
	
end
