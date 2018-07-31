class SessionsController < Devise::SessionsController
  before_action :authenticate_user!, execpt: [:create]
  respond_to :json

  def show
    require 'pry'; binding.pry
    render json: current_user
  end

  private

  def respond_to_on_destroy
    head :no_content
  end
end
