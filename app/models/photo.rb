class Photo < ActiveRecord::Base
	belongs_to :survey
	mount_uploader :file, PhotoUploader 
  # Remember to create a migration!
end
