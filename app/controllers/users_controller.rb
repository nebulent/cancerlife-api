class UsersController < ApplicationController

  def index
    @users = User.all
    new_params = transform_params
    p new_params
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(transform_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(transform_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

  def transform_params
    aux = ActiveSupport::HashWithIndifferentAccess.new
    aux[:user] = {}
    params[:or].each do |k, v|
      aux[:user][k.split('.').last.to_sym] = v
    end
    return aux
  end
end
