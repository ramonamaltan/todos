require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo("Laundry")

    expect(page).to have_current_path(root_path)
    expect(page).to display_todo("Laundry")
  end
end
