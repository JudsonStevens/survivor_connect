class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }
  # protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  skip_before_action :verify_signed_out_user, raise: false

  def fallback_index_html
    render file: 'public/index.html'
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end
end
