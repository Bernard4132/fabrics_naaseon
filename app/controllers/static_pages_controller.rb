class StaticPagesController < ApplicationController

def home	
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