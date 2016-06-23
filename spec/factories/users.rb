FactoryGirl.define do
  factory :user do
    first_name "First"
    last_name "Last"
    username "testuser"
    email "test@test.com"
    password "Test123"
    confirmed_at Time.now 
  end
end
