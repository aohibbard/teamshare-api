class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.string :status
      t.text :notes
      t.bigint :user_id, foreign_key: true

      t.timestamps
    end
  end
end
