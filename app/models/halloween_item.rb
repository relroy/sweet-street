class HalloweenItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
