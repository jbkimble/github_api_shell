class GitHubService
  def initialize(token)
    @token = token
  end

  def get_repos
      uri      = URI("https://api.github.com/user/repos?access_token=#{@token}")
      response = Net::HTTP.get(uri)
      JSON.parse(response, symbolize_names: true)
  end

  def get_followers
    uri      = URI("https://api.github.com/user/followers?access_token=#{@token}")
    response = Net::HTTP.get(uri)
    JSON.parse(response, symbolize_names: true)
  end

  def get_stars
    uri      = URI("https://api.github.com/user/starred?access_token=#{@token}")
    response = Net::HTTP.get(uri)
    JSON.parse(response, symbolize_names: true)
  end

  def get_following
    uri = URI("https://api.github.com/user/following?access_token=#{@token}")
    response = Net::HTTP.get(uri)
    get_following_info(JSON.parse(response, symbolize_names: true))
  end

  def get_following_info(followers_data)
    followers_data.map do |follower|
      uri = URI(follower[:url] + "?access_token=#{@token}")
      response = Net::HTTP.get(uri)
      JSON.parse(response, symbolize_names: true)
    end
  end

end
