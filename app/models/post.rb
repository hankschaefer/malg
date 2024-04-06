class Post < ApplicationRecord
    attr_accessor :picture
    mount_uploader :picture, PictureUploader
    belongs_to :group
    # belongs_to :group
end
