require 'test_helper'

class EnrollmentTest < ActiveSupport::TestCase
 test "must have section_id and student_id" do
  enrollment = Enrollment.new
  assert enrollment.invalid?
  assert enrollment.errors[:section_id].any?
  assert enrollment.errors[:student_id].any?
  end

  # test "section_id must be valid" do
  # 	enrollment = Enrollment.new(
  # 		student_id: 123456)
  #   enrollment.section_id = 0
  #   assert enrollment.invalid?
    
  # enrollment.section_id = 123
  # assert enrollment.valid?
   # end

end
