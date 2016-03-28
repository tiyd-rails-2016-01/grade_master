class AddEmailPreferencesToParents < ActiveRecord::Migration
  def change
    add_column :parents, :email_preferences, :boolean
  end
end
