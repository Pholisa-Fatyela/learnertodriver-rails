class UsersController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.friendly.find(params[:id])
    @user_posts = @user.posts.includes(:rich_text_content)
  end
end
