class ProfileController < ApplicationController
	before_filter :authenticate_user!
	def create
    @profile = current_user.twets
  end
  def index
  	@profile = Twets.order(updated_at: :desc).limit(25)
  end
  def show
  	@profile = User.find(params[:id]) 
  end
end
