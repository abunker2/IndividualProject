require "rails_helper"

RSpec.feature "Visiting the login page", type: :feature do

  scenario "The visitor should see login page" do
    visit root_path
    expect(page).to have_text("or sign up to add to the growing collection!")
  end

end