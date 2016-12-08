class UserFollowing
  attr_reader :name, :company, :location, :url, :picture

  def initialize(attributes={})
    @name = attributes[:name]
    @company = attributes[:company]
    @location = attributes[:location]
    @url = attributes[:html_url]
    @picture = attributes[:avatar_url]
  end

  def self.following(token)
    GitHubService.new(token).get_following.map do |one_following|
      UserFollowing.new(one_following)
    end
  end

end
