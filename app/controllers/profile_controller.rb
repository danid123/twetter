class ProfileController < ApplicationController
	before_filter :authenticate_user!
	def index
  	get_twets
	end
	def create
    @profile = current_user.twets
  end
end
