require 'rails_helper'

describe "User Log in", type: :feature, js:true do
  it "log_in" do
    setup_user
    visit '/'
    expect(page).to have_content("Acceder")
    fill_in("email", with: @usuario.email)
    fill_in("password", with: @usuario.password)
    find_button('Entrar').click
    expect(page).to have_content("Crea tu primera sucursal")
    find_button(id: 'burger-button').click
    find_link(id: 'log_out').click
  end
end

describe "User Log in fail", type: :feature, js:true do
  it "log_in_fail" do
    setup_user
    visit '/'
    expect(page).to have_content("Acceder")
    fill_in("email", with: @usuario.email)
    fill_in("password", with: "1234567")
    find_button('Entrar').click
    expect(page).to have_content("Acceder")
  end
end