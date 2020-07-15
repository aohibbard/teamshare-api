class ChangeUserProjectForeignKeys < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :user_ids
    remove_column :users, :projects_id
    add_column :projects, :user_project_id, :integer
    add_column :users, :user_project_id, :integer
  end
end
