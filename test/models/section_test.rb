require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  test "section attributes must not be empty" do
  section = Section.new
  assert section.invalid?
  assert section.errors[:section_id].any?
  assert section.errors[:semester].any?
  assert section.errors[:course_id].any?
  end
  
  test "section_id must be >0" do
  	section = Section.new(
  		course_id: "111",
  		semester: "made up")
    section.section_id = 0
    assert section.invalid?
    
    section.section_id = 444
    assert section.valid?
   end
end
