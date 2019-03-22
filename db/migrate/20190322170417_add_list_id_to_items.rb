class AddListIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :task, :string

  end
end
