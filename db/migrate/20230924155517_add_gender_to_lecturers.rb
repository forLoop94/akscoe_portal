class AddGenderToLecturers < ActiveRecord::Migration[7.0]
  def change
    add_column :lecturers, :gender, :string
  end
end
