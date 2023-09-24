class CreateStudentCourse < ActiveRecord::Migration[7.0]
  def change
    create_table :student_courses do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
