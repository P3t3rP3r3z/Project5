class Course < ApplicationRecord 
validates :course_name, :department, :course_id, :credit_hours, presence: true
validates :course_name, uniqueness: true
validates :course_id, :credit_hours, numericality: {greater_than: 0}
has_many :sections

def course_params
	params.require(:course).permit(:course_name, :course_id)
end

end
