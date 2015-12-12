class SweetestDayItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
