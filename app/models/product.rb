class Product < ActiveRecord::Base
mount_uploader :image, ImageUploader
validates :name, :brand, :category, :price, :image, presence: true

end
