class UsersController < ApplicationController
  before_action :set_user, only: %i(edit update destroy)
  def index
    @users = User.order(:name).page(params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(permited_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def update
    if @user.update(permited_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def edit; end

  def destroy
    @user.destroy

    redirect_to users_path
  end

  private

  def permited_params
    params.require(:user).permit(:name, :townhouse_area_id, :email, :document)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
