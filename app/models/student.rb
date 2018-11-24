class Student < ApplicationRecord
validates :name, :student_id, :student_email, presence: true
validates :student_email, format: { with: URI::MailTo::EMAIL_REGEXP }
validates :name,
        presence: true,
        length: {
            maximum: 64,
            minimum: 5,
            message: 'must be a minimum: 5 letters and a maximum: 64 letters'},
        format: {
            # Full Name RegEx
            with: /[\w\-\']+([\s]+[\w\-\']){1}/
        }
validates :name, :student_id, :student_email, uniqueness: true

has_many :enrollments
has_many :sections, through: :enrollments

end
