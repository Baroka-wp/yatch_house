require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.new(name: 'Yasin', telephone: 41_234_123, email: 'ogaga@example.com', password: '123456') }
    before { subject.save }

    it 'check the name is not blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end

  context 'associations' do
    it 'has many reservation' do
      assc = described_class.reflect_on_association(:reservations)
      expect(assc.macro).to eq :has_many
    end
  end
end
