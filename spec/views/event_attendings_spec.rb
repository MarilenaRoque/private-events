require 'rails_helper.rb'

describe 'the attend events process', type: :feature do
  before :each do
    @test_user = User.create(name: 'Emanuel')
    @test_event = Event.create(title: 'My first event',
                               date: '2021-10-26 20:39:00', local: 'Mexico',
                               description: 'Something will happen here',
                               creator_id: @test_user.id.to_s)
    visit '/login'
    fill_in 'name', with: 'Emanuel'
    click_button 'Log in'
    visit "/events/#{@test_event.id}"
    click_link 'Attend'
  end

  it 'Register the attendance of event by a user' do
    visit '/events'
    expect(page).to have_selector('img')
  end

  it 'Show registered events for Users in their user detail view' do
    visit "/users/#{@test_user.id}"
    expect(page).to have_content @test_event.title.to_s
  end
end
