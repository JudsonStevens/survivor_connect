class Api::UsersController < ApiController
  def index
    if params[:q]
      address = params[:q]
      results = User.near(address, 30)
      render json: results
    else
      render json: User.all
    end
  end

  def show
  end

  def create
    require 'pry'; binding.pry
  end

end
