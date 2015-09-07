class KoansController < ApplicationController
	def index
	
  	@koan = Koan.order("RANDOM()").first

	end
end
