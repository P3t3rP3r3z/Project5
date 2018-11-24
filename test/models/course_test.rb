require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "course attributes must not be empty" do
  tstcourse = Course.new
  assert tstcourse.invalid?
  assert tstcourse.errors[:course_name].any?
  assert tstcourse.errors[:department].any?
  assert tstcourse.errors[:course_id].any?
  assert tstcourse.errors[:credit_hours].any?

  end
  
  test "credit_hours must be >0" do
  	tstcourse = Course.new(
  		course_name: "fake name",
  		department: "made up",
  		course_id: "999"	)
    tstcourse.credit_hours = 0
    assert tstcourse.invalid?
    
    tstcourse.credit_hours = 4
    assert tstcourse.valid?
   end

   test "course_id must not be > 0" do
   	tstcourse = Course.new(
  		course_name: "fake name",
  		department: "made up",
        credit_hours: "4")
   	tstcourse.course_id =0
    assert tstcourse.invalid?
    
    tstcourse.course_id = 400
    assert tstcourse.valid?
    end
    
end