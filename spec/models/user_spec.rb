require 'rails_helper'

describe User do

  include TestFactories

  before do
    @post = associated_post
    @user = authenticated_user
  end

  describe "#favorited" do
    it "returns `nil` if the user has not favorited the post" do
      expect( @user.favorites.find_by_post_id(@post.id) ).to be_nil
    end

    it "returns the appropriate favorite if it exists" do
      expect( @user.favorited(@post) ).to eq(@post.favorites.last)
    end
  end
end


