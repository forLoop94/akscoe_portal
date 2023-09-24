require "application_system_test_case"

class LecturersTest < ApplicationSystemTestCase
  setup do
    @lecturer = lecturers(:one)
  end

  test "visiting the index" do
    visit lecturers_url
    assert_selector "h1", text: "Lecturers"
  end

  test "should create lecturer" do
    visit lecturers_url
    click_on "New lecturer"

    click_on "Create Lecturer"

    assert_text "Lecturer was successfully created"
    click_on "Back"
  end

  test "should update Lecturer" do
    visit lecturer_url(@lecturer)
    click_on "Edit this lecturer", match: :first

    click_on "Update Lecturer"

    assert_text "Lecturer was successfully updated"
    click_on "Back"
  end

  test "should destroy Lecturer" do
    visit lecturer_url(@lecturer)
    click_on "Destroy this lecturer", match: :first

    assert_text "Lecturer was successfully destroyed"
  end
end
