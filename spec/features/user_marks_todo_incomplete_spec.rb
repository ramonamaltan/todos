require 'rails_helper'

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in

    create_todo("Laundry")

    click_on 'Mark as complete'
    click_on 'Mark as incomplete'

    expect(page).not_to display_completed_todo("Laundry")
    expect(page).to display_todo("Laundry")
  end
end
