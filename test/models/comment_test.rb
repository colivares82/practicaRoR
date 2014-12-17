require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
	@comment = Comment.new(content: "Test Content"*10 , post_id: 1 )
end 


test "Comment should be maximun 140 Lenght" do
	@comment.content = "t" * 150
	assert_not @comment.valid?
end

end
