class Section < ApplicationRecord
  validates :semester, :section_id, :course_id, presence: true
  validates :course_id, :section_id, numericality: {greater_than: 0}
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :course

  def numsem 
    "#{course.course_name} #{section_id} #{semester}"
  end

end
