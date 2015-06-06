class Product < ActiveRecord::Base

  mount_uploader :photo, ProductPhotoUploader

  has_many :one_gallons
  has_many :two_gallons
  has_many :three_half_gallons
  has_many :six_half_gallons
  has_many :popcorn_flavors
end
