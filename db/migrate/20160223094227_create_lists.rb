class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.integer :state
      t.datetime :due_date
      t.text :context

      t.timestamps null: false
    end
  end
end
