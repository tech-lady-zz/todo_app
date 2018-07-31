class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to root_path
    end
  else
    return render :new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def destroy
    @user = User.delete(params[:id])
  end

  private

  def users_params
    params.require(:user).permit(:name, :email)
  end

end
