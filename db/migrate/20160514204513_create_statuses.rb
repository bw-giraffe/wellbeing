class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :title
      t.text :description
      t.boolean :interrupt
      t.integer :level
      t.string :video

      t.timestamps null: false
    end
  end
end
