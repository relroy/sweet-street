class FathersDayItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
