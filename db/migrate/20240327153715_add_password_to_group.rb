class AddPasswordToGroup < ActiveRecord::Migration[7.1]
  def change
    add_column :groups, :password, :integer
  end
end
