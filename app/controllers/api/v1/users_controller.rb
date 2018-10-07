class API::V1::UsersController < API::V1::BaseController
  load_and_authorize_resource

  def index
    render json: @users
  end
end
