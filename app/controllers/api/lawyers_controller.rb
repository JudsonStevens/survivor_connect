class Api::LawyersController < ApiController
  def index
    if params[:q]
      address = params[:q]
      results = Lawyer.near(address, 30)
      render json: results
    else
      render json: Lawyer.all
    end
  end

  def show
  end
end
