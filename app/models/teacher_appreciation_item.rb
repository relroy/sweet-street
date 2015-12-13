class TeacherAppreciationItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
