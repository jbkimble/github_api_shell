class UserFollowers
  attr_reader :login, :avatar_url, :url

  def initialize(attributes={})
    @login = attributes[:login]
    @avatar_url = attributes[:avatar_url]
    @url = attributes[:html_url]
  end

  def self.followers(username)
    GitHubService.new("", username).get_followers.map do |raw_follower|
      UserFollowers.new(raw_follower)
    end
  end
end
