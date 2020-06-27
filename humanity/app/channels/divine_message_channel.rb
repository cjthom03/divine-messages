class DivineMessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'divine_message'
  end
end
