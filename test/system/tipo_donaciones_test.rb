require "application_system_test_case"

class TipoDonacionesTest < ApplicationSystemTestCase
  setup do
    @tipo_donacione = tipo_donaciones(:one)
  end

  test "visiting the index" do
    visit tipo_donaciones_url
    assert_selector "h1", text: "Tipo Donaciones"
  end

  test "creating a Tipo donacione" do
    visit tipo_donaciones_url
    click_on "New Tipo Donacione"

    fill_in "Desc Tipo Donacion", with: @tipo_donacione.Desc_Tipo_Donacion
    click_on "Create Tipo donacione"

    assert_text "Tipo donacione was successfully created"
    click_on "Back"
  end

  test "updating a Tipo donacione" do
    visit tipo_donaciones_url
    click_on "Edit", match: :first

    fill_in "Desc Tipo Donacion", with: @tipo_donacione.Desc_Tipo_Donacion
    click_on "Update Tipo donacione"

    assert_text "Tipo donacione was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo donacione" do
    visit tipo_donaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo donacione was successfully destroyed"
  end
end
