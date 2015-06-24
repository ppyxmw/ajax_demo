class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    redirect_to messages_path
  end

  def index
    @messages = Message.all.order(:created_at)
  end

  private
  def message_params
    params.require(:message).permit(:username, :body)
  end
end
