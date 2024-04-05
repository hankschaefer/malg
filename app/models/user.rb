class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_one :group
  accepts_nested_attributes_for :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
