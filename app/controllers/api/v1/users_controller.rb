class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: { data: @users }, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: { data: @user }, status: :ok
  end
end
