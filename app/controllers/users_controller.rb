class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action do
    unless current_user && current_user.admin?
      redirect_to posts_path, alert: 'You are not admin'
    end
  end
  before_action :find_user, except: [:new, :create, :index]

  def index
    @users = User.all
  end

  def edit

  end
  def create
    params = params.merge(user_id: current_user.id)
    @user = User.create( user_params )
  end


  def show
  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private


  def find_user
    @user = User.find(params[:id])
  end


end
