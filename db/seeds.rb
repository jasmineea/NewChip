# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    Post.create(
        title: Faker::Lorem.sentences[0],
        content: Faker::Lorem.sentences[0]

    )
end

def fake_users
    user_id = 0
    10.times do
        User.create(
            name: Faker::Name.name,
            email: Faker::Internet.email,
            password: '12345678'
        )
    end
end

10.times do 
    Booking.create(
        name: Faker::Lorem.sentences[0],
        description: Faker::Lorem.sentences[0],
        room_id: Faker::Number
    )
end

10.times do
    Meal.create(
        name: Faker::Food.ingredient,
        ingredients: Faker::Food.description
    )
end

fake_users