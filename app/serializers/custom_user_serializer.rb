class CustomUserSerializer < UserSerializer
  attributes :name, :email, :address, :pro_bono_hours, :phone_number, :firm_name, :display_buttons, :bio_info

  def display_buttons
    true
  end
end