# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara'
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Checks for pending migration and applies them before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

def stub_omniauth
 OmniAuth.config.test_mode = true
 OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new( {"provider"=>"github",
   "uid"=>"16926627",
"info"=>
 {"nickname"=>"antciccone",
  "email"=>nil,
  "name"=>"Anthony Ciccone ",
  "image"=>"https://avatars.githubusercontent.com/u/16926627?v=3",
  "urls"=>{"GitHub"=>"https://github.com/antciccone", "Blog"=>"https://antciccone.github.io/"}},
"credentials"=>{"token"=>"pizza", "expires"=>false},
"extra"=>
 {"raw_info"=>
   {"login"=>"antciccone",
    "id"=>16926627,
    "avatar_url"=>"https://avatars.githubusercontent.com/u/16926627?v=3",
    "gravatar_id"=>"",
    "url"=>"https://api.github.com/users/antciccone",
    "html_url"=>"https://github.com/antciccone",
    "followers_url"=>"https://api.github.com/users/antciccone/followers",
    "following_url"=>"https://api.github.com/users/antciccone/following{/other_user}",
    "gists_url"=>"https://api.github.com/users/antciccone/gists{/gist_id}",
    "starred_url"=>"https://api.github.com/users/antciccone/starred{/owner}{/repo}",
    "subscriptions_url"=>"https://api.github.com/users/antciccone/subscriptions",
    "organizations_url"=>"https://api.github.com/users/antciccone/orgs",
    "repos_url"=>"https://api.github.com/users/antciccone/repos",
    "events_url"=>"https://api.github.com/users/antciccone/events{/privacy}",
    "received_events_url"=>"https://api.github.com/users/antciccone/received_events",
    "type"=>"User",
    "site_admin"=>false,
    "name"=>"Anthony Ciccone ",
    "company"=>nil,
    "blog"=>"https://antciccone.github.io/",
    "location"=>nil,
    "email"=>nil,
    "hireable"=>nil,
    "bio"=>nil,
    "public_repos"=>30,
    "public_gists"=>2,
    "followers"=>1,
    "following"=>0,
    "created_at"=>"2016-01-27T20:41:49Z",
    "updated_at"=>"2016-12-05T17:10:29Z"}}})
 end


RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, :type => :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
end
