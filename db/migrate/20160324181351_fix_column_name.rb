class FixColumnName < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :password_digest, :github_user_name
    end
  end
end
