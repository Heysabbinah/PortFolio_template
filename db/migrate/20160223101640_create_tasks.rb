class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.integer :state
      t.references :list, index: true, foreign_key: true
      t.time :duration

      t.timestamps null: false
    end
  end
end
