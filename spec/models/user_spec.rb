require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'Anything',
                        id: 1)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe 'associations' do
    it { should have_many(:events) }
    it { should have_many(:event_attendings) }
    it { should have_many(:attended_events) }
  end
end
