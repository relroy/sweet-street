class ValentinesItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
