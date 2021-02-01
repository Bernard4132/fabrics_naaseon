class StaticPagesController < ApplicationController

def home
@kentefabrics = Fabric.where(ctype: "kente").last(6)
@clothfabrics = Fabric.where(ctype: "cloth").last(6)	
end

def about	
end

def fabricsandclothes	
end

def mydashboard
	if signed_in?
    @allorders = Order.where(fulfilled: false).all
	@allrequests = Request.all
	render layout: "admin"
	end	
end

end