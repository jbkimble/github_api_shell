require 'rails_helper'

describe GitHubService do
  context '#repos' do
    it 'returns all repos for a user' do
      VCR.use_cassette("#repos") do
        repos = GitHubService.new(ENV["token"]).get_repos

        expect(repos).to be_an(Array)
        expect(repos.first).to have_key(:name)
        expect(repos.first).to have_key(:full_name)
        expect(repos.first).to have_key(:description)
      end
    end
  end
end
