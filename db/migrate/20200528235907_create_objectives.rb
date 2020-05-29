class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.belongs_to :projects, null: false, foreign_key: true
      t.string :title
      t.boolean :status
      t.text :notes
      t.belongs_to :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
