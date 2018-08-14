require "application_system_test_case"

class FundacionesTest < ApplicationSystemTestCase
  setup do
    @fundacione = fundaciones(:one)
  end

  test "visiting the index" do
    visit fundaciones_url
    assert_selector "h1", text: "Fundaciones"
  end

  test "creating a Fundacione" do
    visit fundaciones_url
    click_on "New Fundacione"

    fill_in "Banco", with: @fundacione.Banco_id
    fill_in "Celfundacion", with: @fundacione.CelFundacion
    fill_in "Correofundacion", with: @fundacione.CorreoFundacion
    fill_in "Descripcion", with: @fundacione.Descripcion
    fill_in "Dirfundacion", with: @fundacione.DirFundacion
    fill_in "Fechacreacion", with: @fundacione.FechaCreacion
    fill_in "Imagenlogo", with: @fundacione.ImagenLogo
    fill_in "Latdirfundacion", with: @fundacione.LatDirFundacion
    fill_in "Londirfundacion", with: @fundacione.LonDirFundacion
    fill_in "Nitfundacion", with: @fundacione.NitFundacion
    fill_in "Nombrefundacion", with: @fundacione.NombreFundacion
    fill_in "Numerocuenta", with: @fundacione.NumeroCuenta
    fill_in "Telfundacion", with: @fundacione.TelFundacion
    fill_in "Usuario", with: @fundacione.Usuario_id
    click_on "Create Fundacione"

    assert_text "Fundacione was successfully created"
    click_on "Back"
  end

  test "updating a Fundacione" do
    visit fundaciones_url
    click_on "Edit", match: :first

    fill_in "Banco", with: @fundacione.Banco_id
    fill_in "Celfundacion", with: @fundacione.CelFundacion
    fill_in "Correofundacion", with: @fundacione.CorreoFundacion
    fill_in "Descripcion", with: @fundacione.Descripcion
    fill_in "Dirfundacion", with: @fundacione.DirFundacion
    fill_in "Fechacreacion", with: @fundacione.FechaCreacion
    fill_in "Imagenlogo", with: @fundacione.ImagenLogo
    fill_in "Latdirfundacion", with: @fundacione.LatDirFundacion
    fill_in "Londirfundacion", with: @fundacione.LonDirFundacion
    fill_in "Nitfundacion", with: @fundacione.NitFundacion
    fill_in "Nombrefundacion", with: @fundacione.NombreFundacion
    fill_in "Numerocuenta", with: @fundacione.NumeroCuenta
    fill_in "Telfundacion", with: @fundacione.TelFundacion
    fill_in "Usuario", with: @fundacione.Usuario_id
    click_on "Update Fundacione"

    assert_text "Fundacione was successfully updated"
    click_on "Back"
  end

  test "destroying a Fundacione" do
    visit fundaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fundacione was successfully destroyed"
  end
end
