require 'rails_helper.rb'

describe 'the signin process', type: :feature do
  before :each do
    @test_user = User.create(name: 'MariRoque')
  end

  it 'Display Create Event Button when create a new user' do
    visit '/users/new'

    fill_in 'user_name', with: 'MariRoque'

    click_button 'Create'
    expect(page).to have_content 'Create Event'
  end

  it 'Display Create Event Button when user log in' do
    visit '/login'

    fill_in 'name', with: 'MariRoque'

    click_button 'Log in'
    expect(page).to have_content 'Create Event'
  end

  it 'Users Index page Show the User' do
    visit '/users'
    expect(page).to have_content 'MariRoque'
  end

  it 'If there is a user show page with the new User index' do
    visit "/users/#{@test_user.id}"
    expect(page).to have_content 'Upcoming'
  end
end
