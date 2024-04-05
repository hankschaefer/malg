class AddGroupIdToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :group_id, :integer
    add_index :users, :group_id
  end
end
