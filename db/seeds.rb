# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

25.times do
  User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  username: Faker::Internet.user_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password(10, 20, true, true),
  confirmed_at: Time.now
  )
end

@users = User.all

50.times do
  App.create!(
  name: Faker::Company.name,
  url: Faker::Internet.url,
  user: @users.sample
  )
end

@apps = App.all

400.times do
  Event.create!(
  event_name: Faker::Internet.slug,
  app: @apps.sample
  )
end

puts "Seeded #{User.count} Users"
puts "Seeded #{App.count} Apps"
puts "Seeded #{Event.count} Events"
