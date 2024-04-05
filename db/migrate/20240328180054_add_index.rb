class AddIndex < ActiveRecord::Migration[7.1]
  def change
    add_index :groups, :name, :unique => true
  end
end
