require 'rails_helper'

RSpec.describe 'Reservations management', type: :request do
  before :each do
    user = User.new(id: 1, name: 'Yasin', email: 'yss@gm.com', password: 11_223_344)
    user.save!
    house = House.new(id: 1, name: 'Boola', location: 'sant', price: 2_000_000, description: 'alksdhfaslkdfj')
    house.save!
    Reservation.create(id: 1, start_date: '01-02-2022', end_date: '04-09-2022', status: 'enabled', house_id: house.id,
                       user_id: user.id)
    Reservation.create(id: 2, start_date: '11-02-2022', end_date: '14-09-2022', status: 'enabled', house_id: house.id,
                       user_id: user.id)
  end

  it 'check actions for houses' do
    get '/api/v1/houses/1'
    expect(response).to have_http_status(:success)
  end

  it 'check actions for house' do
    get '/api/v1/houses/1'
    expect(response).to have_http_status(:success)
  end

  it 'return a reservation' do
    get '/api/v1/reservations/1'
    expect(response).to have_http_status(:success)
  end

  it 'return all reservations' do
    get '/api/v1/reservations'
    expect(response).to have_http_status(:success)
  end
end
