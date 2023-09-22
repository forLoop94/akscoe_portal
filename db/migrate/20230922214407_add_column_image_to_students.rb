class AddColumnImageToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :photo, :string
  end
end
