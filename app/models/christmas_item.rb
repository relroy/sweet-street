class ChristmasItem < ActiveRecord::Base
   mount_uploader :photo, ProductPhotoUploader
end
