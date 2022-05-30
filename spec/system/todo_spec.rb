require 'rails_helper'

RSpec.describe 'Todos Index Page' do
  fixtures :todos
  
  it 'shows the todos page header' do
    visit todos_path

    header = find('header h1')
    expect(header).to have_text('todos')
  end

  it 'displays todo titles' do
    visit todos_path

    todo_items = all('li a')
    todo_items.each_with_index { |todo, index| expect(todo).to have_text(todos[index].title) }
  end
end
