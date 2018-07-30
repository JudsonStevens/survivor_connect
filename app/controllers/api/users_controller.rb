class Api::UsersController < ApiController
  before_action :authenticate_user!, only: [:update]

  def index
    if params[:q]
      address = params[:q]
      results = User.near(address, 30)
      render json: (results + [(Geocoder.search(address).first.coordinates)])
    else
      render json: User.all
    end
  end

  def update
    render json: current_user
  end

  def show
    # If the user is signed in and is viewing their own profile page, that's fine. If not, that's fine as well.
    # This should handle both situations. If the user is viewing their own page, add an attribute telling the front end
    # to display the buttons only they should see, in order to edit their account or other tasks of that nature.
    if request.headers['HTTP_AUTHORIZATION'] && user_signed_in? && (User.friendly.find(current_user.id) == User.friendly.find(params[:id]))
      render json: CustomUserSerializer.new(User.friendly.find(current_user.id))
    else
      render json: User.friendly.find(params[:id])
    end
  end
end
