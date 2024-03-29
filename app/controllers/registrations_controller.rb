class RegistrationsController < Devise::RegistrationsController
  respond_to :json, :controllers => { sessions: 'sessions', registrations: 'registrations' }
  before_action :registration_params, if: :devise_controller?, on: [:create]
  def create
    super do
      build_resource(registration_params)
      resource.password = registration_params[:password]
      resource.password_confirmation = registration_params[:password_confirmation]
      resource.save!
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:name, :email, :address, :phone_number, :password, :password_confirmation)
  end
end
