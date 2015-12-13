class StPatricksDayItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
