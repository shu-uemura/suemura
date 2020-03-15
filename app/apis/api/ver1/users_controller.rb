class Api::V1::UsersController < ApplicationController
  def index
    @users = User.where("addr1 = ?", user_params[:addr1])
    @users = @users.map do |user|
      {
          id: user.id,
          name: user.name,
          address:{
              addr1: user.addr1,
              addr2: user.addr2
          },
      }
    end
    render json: @users
  end


  private
  # リクエストパラメータのバリデーション
  def user_params
    params.permit(:addr1)
  end
end