class DashboardController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @user_repo_data = GitHubUser.for_user(@user.token)
    @user_followers_data = UserFollowers.followers(@user.username)
    @user_stars = UserStars.stars(@user.username)
  end

end
