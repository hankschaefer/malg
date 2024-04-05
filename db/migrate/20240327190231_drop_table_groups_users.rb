class DropTableGroupsUsers < ActiveRecord::Migration[7.1]
  def change
    drop_table :groups_users
  end
end
