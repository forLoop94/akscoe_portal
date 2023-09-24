class CreateLecturers < ActiveRecord::Migration[7.0]
  def change
    create_table :lecturers do |t|

      t.timestamps
    end
  end
end
