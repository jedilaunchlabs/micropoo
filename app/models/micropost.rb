class Micropost < ActiveRecord::Base

	belongs_to :user

	validates :content, length: { maximum: 140 }

	mount_uploader :image, ImageUploader
	
end
