class ChangeNullConstraintInStudents < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :name, :string, null: false
  end
end
