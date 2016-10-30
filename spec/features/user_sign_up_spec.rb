require 'rails_helper'

RSpec.feature 'sign up' do
  scenario 'successfully' do
    visit new_user_registration_path
    
    fill_in 'Email', with: 'example@fake.com'
    fill_in 'Password', with: 'hunter2'
    fill_in 'Password confirmation', with: 'hunter2'
    click_on 'Sign up'

    expect(page).to have_content 'example@fake.com'
  end

  scenario 'unsuccessfully' do
    visit new_user_registration_path

    fill_in 'Email', with: 'example@fake.com'
    fill_in 'Password', with: ''
    fill_in 'Password confirmation', with: ''
    click_on 'Sign up'

    expect(page).to have_content 'error'
  end
end
