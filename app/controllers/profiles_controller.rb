class ProfilesController < ApplicationController
	before_action :authenticate_user!
  def new
  	@profile = Profile.new
  end
  def create
  	@profile = current_user.build_profile(profile_params)
  	if @profile.save
  		redirect_to profile_path(@profile.id)
  	else
  		render 'new'
  	end
  end

  def show
  	@profile = Profile.find_by(id:params[:id])
  end

  def edit
  	
  end
  def update
  	
  end
  def destroy
  	
  end
 private
   def profile_params
     params.require(:profile).permit(:nickname, :age, :avatar)
   end
end
