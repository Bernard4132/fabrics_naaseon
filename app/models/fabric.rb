class Fabric < ApplicationRecord
	mount_uploader :fabricimage, FabricimageUploader
	has_many :requests
	default_scope -> { order('created_at ASC') }
end
