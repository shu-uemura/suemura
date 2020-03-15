module API
  module Ver1
    class Users < Grape::API
      format :json

      # /api/v1/users/
      get '/users' do
        @users = User.where("addr1 = ?", user_params[:addr1])
      end

    end
  end
end