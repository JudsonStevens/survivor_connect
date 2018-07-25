class Api::ContactsController < ApiController

  def create
    # binding.pry
    message = Message.new(message_params)
    if message.save
      redirect_to '/'
    else
      redirect_to '/contact'
    end
  end

  private

  def message_params
    params.permit(:name, :email, :message_content)
  end
end
