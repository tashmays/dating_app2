class ProfilesController < ApplicationController
  def index
    @gender_matches = Profile.where.not(gender: current_user.profile.gender)
  end

  def show
  	#@user = User.find(params[:id])
  	@profile = Profile.find(params[:id])
  end

	def new
		@profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
  	if @profile.save
  		redirect_to profile_path(@profile)
  	else
  		render :new
  	end
  end

  def edit
  	@profile = Profile.find(params[:id])
  end


  def update
  	@profile = Profile.find(params[:id])
  	if @profile.update(profile_params)
  		redirect_to profile_path
  	else
  		render :edit
  	end
  end

  def destroy
    profile = Profile.find(params[:id])
    if profile.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def profile_params
  	params.require(:profile).permit(:bio, :age, :gender, :city, :user_id, :user_likes)
  end
end