class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :department
      t.integer :course_id
      t.integer :credit_hours

      t.timestamps
    end
  end
end
