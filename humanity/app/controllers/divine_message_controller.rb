# frozen_string_literal: true

# Controls divine messages
#
class DivineMessageController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    ActionCable.server.broadcast 'divine_message', { message: params[:message] }
  end
end
