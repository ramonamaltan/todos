require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    click_on "Create todo"
    fill_in "Title", with: "Laundry"
    click_on 'Create Todo'

    expect(page).to have_current_path(root_path)
    expect(page).to have_css '.todos li', text: 'Laundry'
  end
end
