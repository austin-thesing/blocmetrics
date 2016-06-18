FactoryGirl.define do
  factory :user do
    first_name "First"
    last_name "Last"
    username "username"
    email "test@test.com"
    password "password"
    password_confirmation "password"
    confirmed_at Time.now
  end
end
