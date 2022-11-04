FactoryBot.define do
  factory :task do
    title { 'MyString' }
    status { 1 }
    user_id { 1 }
  end
end
