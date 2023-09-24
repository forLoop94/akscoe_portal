class Student < ApplicationRecord
  has_many :student_courses, dependent: :destroy
  has_many :courses, through: :student_courses, dependent: :destroy, class_name: 'Course'

  validates :name, :level, :gender, :department, :age, :lga_of_origin, :phone_number, :photo, presence: true
end
