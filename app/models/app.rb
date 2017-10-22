class App < ApplicationRecord
    mount_uploader :square, ImageUploader
    mount_uploader :image0, ImageUploader
    mount_uploader :image1, ImageUploader
    mount_uploader :image2, ImageUploader
    mount_uploader :image3, ImageUploader
end
