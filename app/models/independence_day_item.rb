class IndependenceDayItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
