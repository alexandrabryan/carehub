class AddGroupToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :group_id, :integer
  end
end
