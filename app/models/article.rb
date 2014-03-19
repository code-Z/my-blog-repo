class Article < ActiveRecord::Base
	has_many :comments
	
	has_attached_file :image
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	
	acts_as_taggable   
  acts_as_taggable_on :tag_list
end
