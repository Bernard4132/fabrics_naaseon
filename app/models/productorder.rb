class Productorder < ApplicationRecord
	belongs_to :user, optional: :true
	belongs_to :fabric, optional: :true
end
