class AddPersonTypeToPrincipal < ActiveRecord::Migration
  def change
    add_column :principals, :person_type, :string
  end
end
