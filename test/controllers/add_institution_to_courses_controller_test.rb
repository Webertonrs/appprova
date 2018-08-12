require 'test_helper'

class AddInstitutionToCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_institution_to_course = add_institution_to_courses(:one)
  end

  test "should get index" do
    get add_institution_to_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_add_institution_to_course_url
    assert_response :success
  end

  test "should create add_institution_to_course" do
    assert_difference('AddInstitutionToCourse.count') do
      post add_institution_to_courses_url, params: { add_institution_to_course: { institution_id: @add_institution_to_course.institution_id } }
    end

    assert_redirected_to add_institution_to_course_url(AddInstitutionToCourse.last)
  end

  test "should show add_institution_to_course" do
    get add_institution_to_course_url(@add_institution_to_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_institution_to_course_url(@add_institution_to_course)
    assert_response :success
  end

  test "should update add_institution_to_course" do
    patch add_institution_to_course_url(@add_institution_to_course), params: { add_institution_to_course: { institution_id: @add_institution_to_course.institution_id } }
    assert_redirected_to add_institution_to_course_url(@add_institution_to_course)
  end

  test "should destroy add_institution_to_course" do
    assert_difference('AddInstitutionToCourse.count', -1) do
      delete add_institution_to_course_url(@add_institution_to_course)
    end

    assert_redirected_to add_institution_to_courses_url
  end
end
