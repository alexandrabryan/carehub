class AddGroupToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :group_id, :integer
  end
end
