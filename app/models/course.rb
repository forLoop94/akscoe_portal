class Course < ApplicationRecord
  has_many :student_courses, dependent: :destroy, class_name: 'StudentCourse'
  has_many :students, through: :student_courses, dependent: :destroy, class_name: 'Student'
  has_many :lecturer_courses, dependent: :destroy
  has_many :lecturers, through: :lecturer_courses
end
