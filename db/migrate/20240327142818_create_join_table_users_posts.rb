class CreateJoinTableUsersPosts < ActiveRecord::Migration[7.1]
  def change
    create_join_table :users, :posts do |t|
      t.index [:user_id, :post_id]
      t.index [:post_id, :user_id]
    end
  end
end
