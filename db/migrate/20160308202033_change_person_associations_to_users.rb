class ChangePersonAssociationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :person_id, :integer
    add_column :users, :person_type, :string
    remove_column :users, :student_id, :integer
    remove_column :users, :teacher_id, :integer
    remove_column :users, :parent_id, :integer    
  end
end
