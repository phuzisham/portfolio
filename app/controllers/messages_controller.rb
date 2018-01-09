class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.contact_me(@message).deliver_now
      redirect_to new_message_path, notice: "Message received!"
    else
      flash[:alert] = @message.errors.full_messages.join(' -- ')
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :body, :subject)
  end
end
