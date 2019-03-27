class AddGroupToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :group_id, :integer
  end
end
