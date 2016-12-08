class DashboardController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @user_repo_data = GitHubUser.for_user(@user.token)
    @user_followers_data = UserFollowers.followers(@user.token)
    @user_stars = UserStars.stars(@user.token)
    @user_following = UserFollowing.following(@user.token)
  end

end
