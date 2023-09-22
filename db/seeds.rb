# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Student.destroy_all

def generate_uni_levels
  generate_random_number = Faker::Number.between(from: 1, to: 5)
  num_by_100 = generate_random_number * 100
  if num_by_100 >= 100 && num_by_100 <= 500
    return num_by_100
  else
    return generate_uni_levels
  end
end

def random_genders
  num = Faker::Number.between(from: 1, to: 2)
  if num == 1
    return "male"
  else
    return "female"
  end
end

departments = %i[Civil_Eng Mechanical_Eng Electrical_Eng Computer_Science Medicine Nursing Law]
random_index_depts = rand(departments.length)

lgas = %i[uyo, nsit_ubium, nsit_ibom, Okobo, Obot-akara, Itu, Ini, Eket, Ibeno, Etinan, Onna]
random_index_lgas = rand(lgas.length)


10.times do
  Student.create(
    name: Faker::Name.name,
    level: generate_uni_levels,
    gender: random_genders,
    department: departments[random_index_depts],
    age: Faker::Number.between(from: 18, to: 22),
    bio: Faker::Lorem.paragraph,
    lga_of_origin: lgas[random_index_lgas],
    phone_number: Faker::PhoneNumber.phone_number,
    photo: Faker::Avatar.image
  )
end

puts "#{Student.count} students created"
