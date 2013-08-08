require 'spec_helper'

feature 'Going to the root page' do
  let(:user) { FactoryGirl.create(:user) }

  scenario 'signing in with an admin role' do
    sign_in_with user
    # expect(page).to have_content('Admin')
  end

  scenario 'the user can sign in' do 
    sign_in_with user
  end

  scenario 'signing in as a simple user' do
    sign_in_with user
    page.should_not have_content('Admin')
  end
end