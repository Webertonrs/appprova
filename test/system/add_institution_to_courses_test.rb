require "application_system_test_case"

class AddInstitutionToCoursesTest < ApplicationSystemTestCase
  setup do
    @add_institution_to_course = add_institution_to_courses(:one)
  end

  test "visiting the index" do
    visit add_institution_to_courses_url
    assert_selector "h1", text: "Add Institution To Courses"
  end

  test "creating a Add institution to course" do
    visit add_institution_to_courses_url
    click_on "New Add Institution To Course"

    fill_in "Institution", with: @add_institution_to_course.institution_id
    click_on "Create Add institution to course"

    assert_text "Add institution to course was successfully created"
    click_on "Back"
  end

  test "updating a Add institution to course" do
    visit add_institution_to_courses_url
    click_on "Edit", match: :first

    fill_in "Institution", with: @add_institution_to_course.institution_id
    click_on "Update Add institution to course"

    assert_text "Add institution to course was successfully updated"
    click_on "Back"
  end

  test "destroying a Add institution to course" do
    visit add_institution_to_courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add institution to course was successfully destroyed"
  end
end
