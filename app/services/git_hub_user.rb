class GitHubUser
  attr_reader :name, :language, :description, :repo_url

  def initialize(attributes={})
    @name = attributes[:name]
    @language = attributes[:language]
    @description = attributes[:description]
    @repo_url = attributes[:html_url]
  end

  def self.for_user(token)
    GitHubService.new(token).get_repos.map do |raw_repo|
      GitHubUser.new(raw_repo)
    end
  end


end
