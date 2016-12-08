class GitHubService
  def initialize(token="", username="")
    @token = token
    @username = username
  end

  def get_repos
      uri      = URI("https://api.github.com/user/repos?access_token=#{@token}")
      response = Net::HTTP.get(uri)
      JSON.parse(response, symbolize_names: true)
  end

  def get_followers
    uri      = URI("https://api.github.com/users/#{@username}/followers")
    response = Net::HTTP.get(uri)
    JSON.parse(response, symbolize_names: true)
  end

  def get_stars
    uri      = URI("https://api.github.com/users/#{@username}/starred")
    response = Net::HTTP.get(uri)
    JSON.parse(response, symbolize_names: true)
  end
end
