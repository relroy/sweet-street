class ProfessionalAssistantItem < ActiveRecord::Base
  mount_uploader :photo, ProductPhotoUploader
end
