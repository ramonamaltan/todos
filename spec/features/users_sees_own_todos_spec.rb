require 'rails_helper'

feature 'User sees own todos' do
  scenario "doesn't see others' todos" do
    Todo.create!(title: 'Laundry', email:"someone_else@example.com")

    sign_in_as "someone@example.com"

    expect(page).not_to display_todo("Laundry")
  end
end
