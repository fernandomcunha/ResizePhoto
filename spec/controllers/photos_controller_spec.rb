require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  describe 'GET #index' do
    it 'returns 200 response' do
      get :index, format: :json

      expect(response).to be_success
    end

    it 'returns all photos' do
      create_list(:photo, 10)

      get :index, format: :json

      parsed_response = JSON.parse(response.body)

      expect(parsed_response.length).to eq(10)
    end
  end
end
