class CreateLecturer < ActiveRecord::Migration[7.0]
  def change
    create_table :lecturers do |t|
      t.string :name, null: false
      t.string :photo, null: false
      t.string :rank, null: false
      t.text :bio, null: false
      t.string :department, null: false
      t.integer :age, null: false
      t.integer :phone_number, null: false
      t.string :lga_of_origin, null: false

      t.timestamps
    end

    create_table :lecturer_courses do |t|
      t.references :lecturer, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
