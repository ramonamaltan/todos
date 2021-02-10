require 'rails_helper'

feature "User can mark todo as complete" do
  scenario "successfully" do
    sign_in

    click_on "Create todo"
    fill_in "Title", with: "Laundry"
    click_on 'Create Todo'

    click_on 'Mark as complete'
    expect(page).to have_css '.todos li.completed', text: 'Laundry'
  end
end
