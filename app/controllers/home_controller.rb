class HomeController < ApplicationController
  def index

  end

  def show
  	
  end

  def new
  	
  end

  def edit
  	
  end

  def create
  	
  end

  def update
  	user = User.find(params[:id])
  	user.update(user_params)

  	redirect_to 
  end

end
