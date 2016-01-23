class Fundraiser < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
