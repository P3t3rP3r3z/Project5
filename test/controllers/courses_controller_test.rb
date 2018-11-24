require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { course_id: @course.course_id, course_name: @course.course_name, credit_hours: @course.credit_hours, department: @course.department } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should not create invalid course" do
    post courses_url, params:{course: {credit_hours: 'love'}}
    assert_template :new
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { course_id: @course.course_id, course_name: @course.course_name, credit_hours: @course.credit_hours, department: @course.department } }
    assert_redirected_to course_url(@course)
  end

  test "should not update an invalid course" do 
    patch course_url(@course), params: {course: {credit_hours: nil }}
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
