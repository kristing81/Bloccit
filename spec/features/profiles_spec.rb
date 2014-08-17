require 'rails_helper'

describe "Visiting profiles" do

  include Warden::Test::Helpers

  before do
    Warden.test_mode!
    @admin = create(:user, role: 'admin')
    @user = create(:user)
    @post = create(:post, user: @user)
    @comment = create(:comment, post: @post, user: @user)
  end

  after do
    Warden.test_reset! 
  end

  describe "not signed in" do

    it "shows profile" do
      visit user_path(@user)
      expect(current_path).to eq(user_path(@user))

      expect( page ).to have_content(@user.name)
      expect( page ).to have_content(@post.title)
      expect( page ).to have_content(@comment.body)
    end
  end

  describe "admin visits user" do

    it "shows profile" do
      login_as(@admin, scope: :user)
      visit user_path(@user)
      expect(current_path).to eq(user_path(@user))
      expect( page ).to have_content(@user.name)
      expect( page ).to have_content(@post.title)
      expect( page ).to have_content(@comment.body)
    end
  end
end