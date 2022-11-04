require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#validations' do
    before(:all) do
      @usr = create(:user)
      @task = create(:task, user: @usr)
    end

    context 'when valid attributes' do
      it 'is valid with TO_DO status' do
        @task.status = Task::TO_DO
        expect(@task).to be_valid
      end
      it 'is valid with IN_PROGRESS status' do
        @task.status = Task::IN_PROGRESS
        expect(@task).to be_valid
      end
      it 'is valid with DONE status' do
        @task.status = Task::DONE
        expect(@task).to be_valid
      end
    end

    context 'when missing an attribute' do
      it 'is not valid without a title' do
        @task.title = nil
        expect(@task).to_not be_valid
        @task.title = 'MyString'
      end
      it 'is not valid without a status' do
        @task.status = nil
        expect(@task).to_not be_valid
        @task.status = Task::TO_DO
      end
      it 'is not valid without a user' do
        @task.user_id = nil
        expect(@task).to_not be_valid
        @task.user = @usr
      end
    end

    context 'when adding wrong formated attributes' do
      it 'is not valid with a status below 1' do
        @task.status = 0
        expect(@task).to_not be_valid
      end
      it 'is not valid with a status above 3' do
        @task.status = 4
        expect(@task).to_not be_valid
        @task.status = Task::TO_DO
      end
      it 'is not valid with a non existing user' do
        @task.user_id = User.last.id + 1
        expect(@task).to_not be_valid
      end
    end
  end
end
