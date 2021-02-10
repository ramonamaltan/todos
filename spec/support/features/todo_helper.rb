module Features
  def create_todo(todo_title)
    click_on "Create todo"
    fill_in "Title", with: todo_title
    click_on 'Create Todo'
  end
end
