class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    p user_params.to_unsafe_h

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end

  end

  private

    def set_user
      @user = User.find_by(email: params[:email])
    end

    def user_params
      params.require(:user).permit(:email, :password)
    end

end
