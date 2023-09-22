class AddColumnToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :phone_number, :bigint
  end
end
