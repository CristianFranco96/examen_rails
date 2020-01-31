require 'rails_helper'

describe "sigin", type: :feature, :js => true do
  it "Registro_campos_vacios" do
    visit '/sessions/new'       
    find_link('Sign Up').click
    expect(page).to have_content 'Registro'
    find_button('Registrarse').click
    expect(page).to have_content 'Campos Requeridos'
  end
end

describe "bad_RFC", type: :feature, :js => true do
  it "Registro_RFC_invalido" do
    visit '/sessions/new'       
    find_link('Sign Up').click
    expect(page).to have_content 'Registro'
    
    fill_in("user_email", with: "erick.zuniga@gmail.com")
    fill_in("user_password", with: "erick123")
    fill_in("user_full_name", with: "Erick Zuñiga")
    fill_in("user_rfc", with: "EFZP960704")
    fill_in("user_company_name", with: "LOL")


    find_button('Registrarse').click
    # expect(page).to have_content 'Campos Requeridos'
    expect(page).to have_content 'RFC Invalido'
  end
end