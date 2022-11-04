FactoryBot.define do
  factory :task do
    title { 'MyString' }
    status { Task::TO_DO }
    association :user
  end
end
