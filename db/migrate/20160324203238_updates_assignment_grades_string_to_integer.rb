class UpdatesAssignmentGradesStringToInteger < ActiveRecord::Migration
  def change
    change_column :assignment_grades, :grade, :float
  end
end
