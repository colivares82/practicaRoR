require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


    def setup
	  @post = Post.new(title: "Example Title", body: "Log Text Long Text" )
	end

	test "Title Should Be Present" do
		@post.title = " "
		assert_not @post.valid?
	end

	test "Body Should Be Present" do
		@post.body = " "
		assert_not @post.valid?
	end



end
