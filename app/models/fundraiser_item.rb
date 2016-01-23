class FundraiserItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
