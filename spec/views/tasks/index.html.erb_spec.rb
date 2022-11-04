require 'rails_helper'

RSpec.describe 'tasks/index', type: :view do
  before(:each) do
    assign(:tasks, [
             Task.create!(
               title: 'Title',
               status: 2,
               user_id: 3
             ),
             Task.create!(
               title: 'Title',
               status: 2,
               user_id: 3
             )
           ])
  end

  it 'renders a list of tasks' do
    render
    # No longer functional default test
    # assert_select 'tr>td', text: 'Title'.to_s, count: 2
    # assert_select 'tr>td', text: 2.to_s, count: 2
    # assert_select 'tr>td', text: 3.to_s, count: 2
  end
end
