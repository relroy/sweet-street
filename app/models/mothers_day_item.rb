class MothersDayItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
