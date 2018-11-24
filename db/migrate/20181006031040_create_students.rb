class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :student_id
      t.string :student_email

      t.timestamps
    end
  end
end
