class DivineMessageController < ApplicationController
  def create
    ActionCable.server.broadcast 'divine_message', { message: params[:message] }
  end
end