class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      render json: user.id, status: 201
    else
      head :bad_request
    end
  end

  def near_me
    if params[:nearby_users] && params[:id]
      twitter_handles = User.where(id: params[:nearby_users].split(',')).pluck(:twitter_handle)
      render json: twitter_handles
    else
      head :bad_request
    end
  end

  private

  def user_params
    params.require(:user).permit(:twitter_handle)
  end
end
