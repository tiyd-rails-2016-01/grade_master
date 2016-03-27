class RemoveEmailFromPrincipals < ActiveRecord::Migration
  def change
    remove_column :principals, :email, :string
  end
end
