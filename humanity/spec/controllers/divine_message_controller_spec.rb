require 'rails_helper'

RSpec.describe DivineMessageController, type: :controller do
  describe '#create' do
    it 'broadcasts a message' do
      expect{ post :create, params: { message: 'sweet' } }
        .to have_broadcasted_to('divine_message').with(message: 'sweet')
    end
  end
end
