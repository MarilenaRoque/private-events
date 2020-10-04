require 'rails_helper'

RSpec.describe EventAttending, type: :model do
  let(:test_user) { User.create(name: 'Example User') }
  let(:test_event) do
    Event.create(title: 'Our Party',
                 description: 'Nice party of the team!',
                 date: '2020-08-27 16:32:43',
                 local: 'Mari House',
                 creator_id: test_user.id)
  end
  let(:subject) do
    described_class.new(attendee_id: test_user.id,
                        attended_event_id: test_event.id)
  end

  it 'is valid' do
    expect(subject).to be_valid
  end

  describe 'associations' do
    it { should belong_to(:attendee) }
    it { should belong_to(:attended_event) }
  end
end
