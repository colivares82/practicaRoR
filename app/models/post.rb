class Post < ActiveRecord::Base
	has_many :comments
	validates :title, :body, presence: true


	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :small => "50x50>" },
		 			  :url  => "/assets/post/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/post/:id/:style/:basename.:extension"						

	validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

end
