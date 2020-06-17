class ChangeObjectives < ActiveRecord::Migration[6.0]
  def change
    remove_column :objectives, :users_id
  end
end
