# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_24_124325) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.integer "code", null: false
    t.integer "level", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lecturer_courses", force: :cascade do |t|
    t.bigint "lecturer_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_lecturer_courses_on_course_id"
    t.index ["lecturer_id"], name: "index_lecturer_courses_on_lecturer_id"
  end

  create_table "lecturers", force: :cascade do |t|
    t.string "name", null: false
    t.string "photo", null: false
    t.string "rank", null: false
    t.text "bio", null: false
    t.string "department", null: false
    t.integer "age", null: false
    t.integer "phone_number", null: false
    t.string "lga_of_origin", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_courses", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name", null: false
    t.integer "level", null: false
    t.string "gender", null: false
    t.string "department", null: false
    t.integer "age", null: false
    t.text "bio"
    t.string "lga_of_origin", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "phone_number", null: false
    t.string "photo", null: false
  end

  add_foreign_key "lecturer_courses", "courses"
  add_foreign_key "lecturer_courses", "lecturers"
  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
end
