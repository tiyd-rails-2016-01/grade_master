class CreateAssignmentGrades < ActiveRecord::Migration
  def change
    create_table :assignment_grades do |t|
      t.string :grade
      t.string :assignment_name
      t.date :assignment_date
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
