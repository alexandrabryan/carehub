class AddIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :list_id, :integer

  end
end
