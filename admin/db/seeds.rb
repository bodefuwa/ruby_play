# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create users
100.times do |n|
 name = Faker::Name.name
 username = Faker::Internet.user_name
 email = username + 'business.com'
 User.create!(name: name, username: username, email: email)
end

# create rolls
Role.create([{name: 'Administrator', status: true, user_id: 1}, {name: 'Writer', status: true, user_id: 3}, {name: 'Reader', status: true, user_id: 10}])

# create offices
20.times do |n|
  title = Faker::Name.title
  Office.create!(title: title)
end
