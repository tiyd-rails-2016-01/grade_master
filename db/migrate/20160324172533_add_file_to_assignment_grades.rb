class AddFileToAssignmentGrades < ActiveRecord::Migration
  def change
    add_attachment :assignment_grades, :uploaded_file
  end
end
