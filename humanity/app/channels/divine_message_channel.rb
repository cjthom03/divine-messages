# frozen_string_literal: true

# Websocket connection for divine messages from the gods
#
class DivineMessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'divine_message'
  end
end
