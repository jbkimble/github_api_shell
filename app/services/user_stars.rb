class UserStars
  attr_reader :name, :url

  def initialize(attributes={})
    @name = attributes[:name]
    @url = attributes[:html_url]
  end

  def self.stars(username)
    GitHubService.new("", username).get_stars.map do |raw_star|
      UserStars.new(raw_star)
    end
  end
end
