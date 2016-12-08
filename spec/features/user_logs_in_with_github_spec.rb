require 'rails_helper'

describe 'User can login with github' do
  context '/auth/github' do
    it 'user can log in' do
    visit "/"
    
    stub_omniauth

    expect(page.status_code).to eq(200)
    expect(current_path).to eq(root_path)


    end
  end
end
