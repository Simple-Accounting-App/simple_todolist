require 'rails_helper'

RSpec.describe 'tasks/show', type: :view do
  before(:each) do
    user = FactoryBot.create(:user)
    @task = assign(:task, Task.create!(
                            title: 'Title',
                            status: Task::IN_PROGRESS,
                            user:
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/In progress/)
  end
end
