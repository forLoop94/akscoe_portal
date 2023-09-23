class ChangeOtherNullConstraintInStudents < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :level, :integer, null: false
    change_column :students, :gender, :string, null: false
    change_column :students, :department, :string, null: false
    change_column :students, :age, :integer, null: false
    change_column :students, :lga_of_origin, :string, null: false
    change_column :students, :photo, :string, null: false
    change_column :students, :phone_number, :integer, null: false
  end
end
