class AddGroupIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :group_id, :integer
  end
end
