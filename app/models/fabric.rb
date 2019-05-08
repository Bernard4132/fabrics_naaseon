class Fabric < ApplicationRecord
	mount_uploader :fabricimage, FabricimageUploader
	has_many :requests
	default_scope -> { order('created_at DESC') }
	before_create :generate_fabricordercode

	def generate_fabricordercode
       self.price = "NFD" + rand(101..999).to_s + "-" + "NFD" + rand(10011..99099).to_s 
  end

end
