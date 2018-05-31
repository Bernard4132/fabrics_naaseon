class Fabric < ApplicationRecord
	mount_uploader :fabricimage, FabricimageUploader
	has_many :requests
end
