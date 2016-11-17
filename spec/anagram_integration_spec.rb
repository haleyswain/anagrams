require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram test path', {:type => :feature}) do
  it('processes the user inputs and determines if they are anagrams') do
    visit("/")
    fill_in('original', :with => "dog")
    fill_in('guesses', :with => "god")
    click_button('Submit')
    expect(page).to have_content('god is an anagram of dog.')
  end
end
