class NewYearsItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
