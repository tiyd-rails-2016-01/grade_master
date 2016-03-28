class CreateStudentAchievements < ActiveRecord::Migration
  def change
    create_table :student_achievements do |t|
      t.integer :achievement_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
