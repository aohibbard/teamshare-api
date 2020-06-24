class ChangeObjectiveForeignKeys < ActiveRecord::Migration[6.0]
  def change
    remove_column :objectives, :projects_id
    add_column :objectives, :project_id, :integer, foreign_key: true
  end
end
