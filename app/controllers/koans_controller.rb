class KoansController < ApplicationController
	def index
  		@koan = Koan.order("RANDOM()").first
	end

	def new
		@koan = Koan.new
	end

	def create
		Koan.create(koan_params)
		redirect_to root_path
	end

	private

  def koan_params
    params.require(:koan).permit(:saying, :author)
  end
end
