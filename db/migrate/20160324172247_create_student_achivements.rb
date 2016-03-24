class CreateStudentAchivements < ActiveRecord::Migration
  def change
    create_table :student_achivements do |t|
      t.integer :achievement_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
