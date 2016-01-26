class FundraiserPicture < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
