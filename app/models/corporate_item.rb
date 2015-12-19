class CorporateItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
