class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find_by(email: user_params[:email])
    if user
      flash[:notice] = "Success!"
      redirect_to root_path
    else
      flash[:alert] = "Invalid Details"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
