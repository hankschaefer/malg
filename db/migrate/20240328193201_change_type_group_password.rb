class ChangeTypeGroupPassword < ActiveRecord::Migration[7.1]
  def change
    change_column :groups, :password, :text
  end
end
