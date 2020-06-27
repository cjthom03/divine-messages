require 'rails_helper'

RSpec.describe RootController, type: :controller do
  describe '#index' do
    it 'renders nope' do
      get :index
      expect(response).to have_http_status(200)
      expect(response.body).to eq('nope')
    end
  end
end
