# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.unique.email, password_digest: "password")
end 
password: Faker::Internet.password(min_length: 5, max_length: 10, mix_case: true


10.times do 
    Project.create(title: Faker::Lorem.sentence(word_count: 2), description: Faker::Lorem.sentence(word_count: 9), due_date: Faker::Date.in_date_period(year: 2020, month: 9), status: "incomplete", notes: Faker::Lorem.sentences(number: 3))
end 

45.times do 
    Objective.create(title: Faker::Lorem.sentence(word_count: 3), status: "incomplete", notes: Faker::Lorem.sentences(number: 3), projects_id: Random.new.rand(1..11))
end 