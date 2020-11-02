class Api::V1::UsersController < ApplicationController
    before_action :set_user, only: [:show,:update,:destroy]
    skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) },
    status: :accepted
  end

  def index
    users = User.all
    render json: users, status: 200
  end

  def create
    user = User.create(user_params)
    if user.valid?
      @token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def destroy
    userId = @user.id
    @user.destroy
    render json: {message:"Zap! user deleted", userId:userId}
  end

  def show
    render json: @user, status: 200
  end

  private
  def user_params(*args)
    params.require(:user).permit(*args)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
