# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Pets

# 10.times do
#     Pet.create(
#         name: Faker::Creature::Dog.name, 
#         breed: Faker::Creature::Dog.breed,
#         date_of_birth: Faker::Date.birthday(min_age:1, max_age:16)
#     )
# end


#Pet Histories
# t.string "height"
# t.string "weight"
# t.datetime "vet_visit_date"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.integer "pet_id"



Pet.pluck(:id).each do |id|
    3.times do
        PetHistory.create(
            height: rand(20..90),
            weight: rand(10..50),
            vet_visit_date: Faker::Date.between(from: 2.years.ago, to: Date.yesterday),
            pet_id: id
        )
    end
end
    
