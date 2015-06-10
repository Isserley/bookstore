class Admin::BaseController < ApplicationController

layout "admin" #rails will look for a views/layout/admin file
							 #gives us a separate layout for admin vs. client side
						   #see views/layouts/admin.html.erb

	def index

	end

end
