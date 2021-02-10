module Features
  def create_todo(todo_title)
    click_on "Create todo"
    fill_in "Title", with: todo_title
    click_on 'Create Todo'
  end

  def display_todo(text)
    have_css '.todos li', text: text
  end

  def display_completed_todo(text)
    have_css '.todos li.completed', text: text
  end
end
