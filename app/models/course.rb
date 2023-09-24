class Course < ApplicationRecord
  has_many :student_courses, dependent: :destroy, class_name: 'StudentCourse'
  has_many :students, through: :student_courses, dependent: :destroy, class_name: 'Student'
end
