require 'rails_helper'

RSpec.describe 'tasks/edit', type: :view do
  before(:each) do
    @task_statuses = Task::STATUSES
    user = FactoryBot.create(:user)
    @task = assign(:task, Task.create!(
                            title: 'MyString',
                            status: 1,
                            user:
                          ))
  end

  it 'renders the edit task form' do
    render

    assert_select 'form[action=?][method=?]', task_path(@task), 'post' do
      assert_select 'input[name=?]', 'task[title]'

      assert_select 'select[name=?]', 'task[status]'
    end
  end
end
