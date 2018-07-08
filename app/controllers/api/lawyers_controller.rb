class Api::LawyersController < ApiController
  def index
    render json: Lawyer.all
  end
end
