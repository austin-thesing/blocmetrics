FactoryGirl.define do
  factory :app do
    name "MyString"
    url "http://localhost.com"
    user
  end
end


#FactoryGirl.create(:app, user: @user)
