class BossDayItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end