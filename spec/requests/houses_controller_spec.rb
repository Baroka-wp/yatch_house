require 'rails_helper'

RSpec.describe 'Houses management', type: :request do
  before :each do
    House.create(id: 1, name: 'Boola', location: 'sant', price: 2_000_000, description: 'alksdhfaslkdfj')
  end

  it 'check actions for houses' do
    get '/api/v1/houses'
    expect(response).to have_http_status(:success)
  end

  it 'check actions for house' do
    get '/api/v1/houses/1'
    expect(response).to have_http_status(:success)
  end
end
