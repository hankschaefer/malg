class AddPictureToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :picture, :string
  end
end
