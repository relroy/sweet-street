class WsProduct < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader

  has_many :carted_products
  has_many :orders, :through => :carted_products


  
end