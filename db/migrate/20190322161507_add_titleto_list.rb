class AddTitletoList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :title, :string
  end
end
