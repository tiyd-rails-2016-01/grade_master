class AddGithubUserNameColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :github_user_name, :string
  end
end
