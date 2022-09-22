require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'Reservation model' do
    user1 = User.new(name: 'Max', telephone: 41_234_123, email: 'Max@example.com', password: '123456')
    house1 = House.new(name: 'Mansion1', location: 'Hollywood', description: 'The description of the house',
                       price: 8_000_000, image: 'https://unsplash.com/photos/F_-0BxGuVvo')
    subject do
      Reservation.new(start_date: '02-01-2008', end_date: '04-09-2022', status: 'open', house_id: house1.id,
                      user_id: user1.id)
    end
    before { subject.save }

    it 'check the start_date is not blank' do
      subject.start_date = nil
      expect(subject).to_not be_valid
    end

    it 'check the end_date is not blank' do
      subject.end_date = nil
      expect(subject).to_not be_valid
    end

    it 'check the status is not blank' do
      subject.status = nil
      expect(subject).to_not be_valid
    end
  end
end
