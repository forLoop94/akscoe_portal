class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :level
      t.string :gender
      t.string :department
      t.integer :age
      t.text :bio
      t.string :lga_of_origin

      t.timestamps
    end
  end
end
