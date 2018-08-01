class SessionsController < Devise::SessionsController
  before_action :authenticate_user!, except: [:create, :destroy]
  skip_before_action :verify_signed_out_user, raise: false
  respond_to :json

  def show
    require 'pry'; binding.pry
    render json: current_user
  end

  def destroy
    render json: { message: 'User was logged out.'}
  end

  private
end
