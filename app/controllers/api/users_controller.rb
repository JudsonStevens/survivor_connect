class Api::UsersController < ApiController
  before_action :authenticate_user!, only: [:edit]

  def index
    if params[:q]
      address = params[:q]
      results = User.near(address, 30)
      render json: results
    else
      render json: User.all
    end
  end

  def update
    render json: current_user
  end

  def show
    require 'pry'; binding.pry
    render json: User.friendly.find(params[:id])
  end
end
