class API::V1::UsersController < API::V1::BaseController

  def index
    render json: { index: 'ok' }
  end
end
