class AddUrlToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :url, :string
  end
end
