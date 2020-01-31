require 'rails_helper'

# @browser = Selenium::WebDriver::Chrome::Service#driver_path= instead
# @browser.get "localhost:3000"

describe "session", type: :feature do
  it "Ingresa a la plataforma" do
    visit "/"
    fill_in 'email', with: 'cristianfranco@gmail.com'
    fill_in 'password', with: '1234567'
    click_button 'Entrar'

    expect(page).to have_contect 'Cristian Franco'
  end
end