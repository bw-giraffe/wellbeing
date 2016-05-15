class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :title
      t.text :description
      t.boolean :interrupt
      t.string :video

      t.timestamps null: false
    end
  end
end
