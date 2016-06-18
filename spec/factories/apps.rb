FactoryGirl.define do
  @users = User.all
  app_user = @users.sample

  factory :app do
    name "MyString"
    url "MyString"
    user app_user
  end
end
