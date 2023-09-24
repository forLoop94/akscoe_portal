class Lecturer < ApplicationRecord
  has_many :lecturer_courses
  has_many :courses, through: :lecturer_courses
end
