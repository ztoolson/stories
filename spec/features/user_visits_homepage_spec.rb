require 'rails_helper'

RSpec.feature 'user visits homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content 'Stories'
  end
end
