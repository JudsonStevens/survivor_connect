class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :address, :pro_bono_hours, :phone_number, :firm_name, :bio_info
end
