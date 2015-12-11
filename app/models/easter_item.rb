class EasterItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
