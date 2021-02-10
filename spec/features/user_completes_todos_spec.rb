require 'rails_helper'

feature "User can mark todo as complete" do
  scenario "successfully" do
    sign_in

    create_todo("Laundry")

    click_on 'Mark as complete'
    expect(page).to have_css '.todos li.completed', text: 'Laundry'
  end
end
