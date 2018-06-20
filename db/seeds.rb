10.times do
    Face.create(
        name: Faker::FunnyName.name,
        bio: Faker::Hacker.say_something_smart,
        likes: Faker::Beer.name,
        dislikes: Faker::Cat.breed
    )
end

puts 'seeded'