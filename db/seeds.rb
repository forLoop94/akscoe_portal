require 'faker'

Student.destroy_all
Course.destroy_all

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

lgas = %i[uyo, nsit_ubium, nsit_ibom, Okobo, Obot-akara, Itu, Ini, Eket, Ibeno, Etinan, Onna]

courses = %i[Engineers_in_society hydraulic_eng medical_sciences midwivery civil_law thermodynamics heat web_development]


10.times do
  random_index_depts = rand(departments.length)
  random_index_lgas = rand(lgas.length)

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

30.times do
  random_index_courses = rand(courses.length)

  Course.create(
    title: courses[random_index_courses],
    code: Faker::Number.unique.number(digits: 3),
    level: generate_uni_levels
  )
end

50.times do
  StudentCourse.create(
    student_id: Student.all.sample.id,
    course_id: Course.all.sample.id
  )
end

puts "#{Student.count} students created\n #{Course.count} courses created\n #{StudentCourse.count} student courses created"
