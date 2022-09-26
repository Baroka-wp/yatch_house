require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'House model' do
    subject do
      House.new(name: 'Mansion1', location: 'Hollywood', description: 'The description of the house',
                price: 8_000_000, image: 'https://unsplash.com/photos/F_-0BxGuVvo')
    end
    before { subject.save }

    it 'check the name is not blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'check the location is not blank' do
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it 'check the description is not blank' do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it 'check the price is not blank' do
      subject.price = nil
      expect(subject).to_not be_valid
    end

    it 'has many reservation' do
      assc = described_class.reflect_on_association(:reservations)
      expect(assc.macro).to eq :has_many
    end
  end
end
