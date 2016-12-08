require 'rails_helper'

describe GitHubService do
  context '#get_repos' do
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

  context '#get_followers' do
    it 'returns all followers for a user' do
      VCR.use_cassette("#followers") do
        followers = GitHubService.new(ENV["token"]).get_followers

        expect(followers).to be_an(Array)
        expect(followers.first).to have_key(:login)
        expect(followers.first).to have_key(:gravatar_id)
        expect(followers.first).to have_key(:login)
      end
    end
  end

  context '#get_stars' do
    it 'returns all starred repos' do
      VCR.use_cassette("#stars") do
        stars = GitHubService.new(ENV["token"]).get_stars

        expect(stars).to be_an(Array)
        expect(stars.first).to have_key(:name)
        expect(stars.first).to have_key(:git_url)
      end
    end
  end

  context '#get_following' do
    it 'returns all people a user is following' do
      VCR.use_cassette("#get_following") do
        following = GitHubService.new(ENV["token"]).get_following

        expect(following).to be_an(Array)
        expect(following.first).to have_key(:name)
        expect(following.first).to have_key(:company)
        expect(following.first).to have_key(:location)
      end
    end
  end
end
