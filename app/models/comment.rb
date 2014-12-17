class Comment < ActiveRecord::Base
	belongs_to :post
	validates :content, presence: true, length: {maximum:140}
	

end
