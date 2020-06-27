require 'rails_helper'

RSpec.describe DivineMessageChannel, type: :channel do
  it 'subscribes' do
    subscribe
    expect(subscription).to be_confirmed
  end

  it 'streams from divine message' do
    subscribe
    expect(subscription).to have_stream_from('divine_message')
  end
end
