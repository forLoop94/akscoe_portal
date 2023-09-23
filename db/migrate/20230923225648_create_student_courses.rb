class CreateStudentCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :student_courses do |t|
      

      t.timestamps
    end
  end
end
