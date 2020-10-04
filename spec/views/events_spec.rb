require 'rails_helper.rb'

describe 'the create events process', type: :feature do
  before :each do
    @test_user = User.create(name: 'Emanuel')
    @test_event = Event.create(title: 'My first event',
                               date: '2020-10-26 20:39:00',
                               local: 'Mexico',
                               description: 'Something will happen here',
                               creator_id: @test_user.id.to_s)
  end

  describe 'Show event attributes in events list' do
    before :each do
      visit '/events'
    end
    it 'has title' do expect(page).to have_content @test_event.title.to_s end
    it 'has date' do expect(page).to have_content @test_event.date.to_s end
    it 'has local' do expect(page).to have_content @test_event.local.to_s end
    it 'has description' do expect(page).to have_content @test_event.description.to_s end
  end

  describe 'Show event attributes in event detail view' do
    before :each do
      visit "/events/#{@test_event.id}"
    end
    it 'has title' do expect(page).to have_content @test_event.title.to_s end
    it 'has date' do expect(page).to have_content @test_event.date.to_s end
    it 'has local' do expect(page).to have_content @test_event.local.to_s end
    it 'has description' do expect(page).to have_content @test_event.description.to_s end
    it 'has creator name' do expect(page).to have_content @test_user.name.to_s end
  end
end
