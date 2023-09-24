class Lecturer < ApplicationRecord
  has_many :lecturer_courses, dependent: :destroy
  has_many :courses, through: :lecturer_courses
end
