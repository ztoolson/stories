require 'rails_helper'

RSpec.feature 'sign in' do
  background do
    @user = User.create(email: 'example@fake.com', password: 'hunter2', password_confirmation: 'hunter2')
  end

  scenario 'successfully' do
    sign_in @user

    expect(page).to have_content @user.email
  end

  scenario 'unsuccessfully' do
    visit new_user_session_path

    fill_in 'Email', with: 'wrong_email@fake.com'
    fill_in 'Password', with: 'hunter2'
    click_on 'Log in'

    expect(page).to_not have_content @user.email
  end
end
