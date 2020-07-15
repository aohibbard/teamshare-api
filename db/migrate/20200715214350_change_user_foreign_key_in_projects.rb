class ChangeUserForeignKeyInProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :user_id
    add_column :projects, :user_ids, :integer
  end
end
