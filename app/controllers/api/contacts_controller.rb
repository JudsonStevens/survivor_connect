class Api::ContactsController < ApiController

  def create
    # binding.pry
    message = Message.new(message_params)
    render json: Message.last
  end

  private

  def message_params
    params.permit(:name, :email, :message_content)
  end
end
