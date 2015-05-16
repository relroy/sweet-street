class Product < ActiveRecord::Base
  has_many :one_gallons
  has_many :two_gallons
  has_many :three_half_gallons
  has_many :six_half_gallons
end
