class API::V1::BaseController < ApplicationController
  include CanCan::ControllerAdditions

  before_action :authenticate_v1_user!

  rescue_from CanCan::AccessDenied do |exception|
    Rails.logger.debug "Accesso negado em #{exception.action} #{exception.subject.inspect}"

    render json:   { errors: ["Accesso negado em #{exception.action} de #{exception.subject.name.pluralize}"] },
           status: :forbidden
  end
end
