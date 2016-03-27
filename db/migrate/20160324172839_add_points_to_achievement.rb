class AddPointsToAchievement < ActiveRecord::Migration
  def change
    add_column :achievements, :points, :integer
  end
end
