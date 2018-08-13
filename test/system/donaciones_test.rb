require "application_system_test_case"

class DonacionesTest < ApplicationSystemTestCase
  setup do
    @donacione = donaciones(:one)
  end

  test "visiting the index" do
    visit donaciones_url
    assert_selector "h1", text: "Donaciones"
  end

  test "creating a Donacione" do
    visit donaciones_url
    click_on "New Donacione"

    fill_in "Descripcionobjeto", with: @donacione.DescripcionObjeto
    fill_in "Direccionreclamardonacion", with: @donacione.DireccionReclamarDonacion
    fill_in "Estadodonacion", with: @donacione.EstadoDonacion
    fill_in "Fundacion", with: @donacione.Fundacion_id
    fill_in "Imagenconsignacion", with: @donacione.ImagenConsignacion
    fill_in "Latituddirreclamardonacion", with: @donacione.Latituddirreclamardonacion
    fill_in "Longituddirreclamardonacion", with: @donacione.LongitudDirReclamarDonacion
    fill_in "Montodonar", with: @donacione.MontoDonar
    fill_in "Objeto", with: @donacione.Objeto_id
    fill_in "Tiempoesperadonador", with: @donacione.TiempoEsperaDonador
    fill_in "Tiempovoluntariado", with: @donacione.TiempoVoluntariado
    fill_in "Tipodonacion", with: @donacione.TipoDonacion_id
    fill_in "Usuario", with: @donacione.Usuario_id
    click_on "Create Donacione"

    assert_text "Donacione was successfully created"
    click_on "Back"
  end

  test "updating a Donacione" do
    visit donaciones_url
    click_on "Edit", match: :first

    fill_in "Descripcionobjeto", with: @donacione.DescripcionObjeto
    fill_in "Direccionreclamardonacion", with: @donacione.DireccionReclamarDonacion
    fill_in "Estadodonacion", with: @donacione.EstadoDonacion
    fill_in "Fundacion", with: @donacione.Fundacion_id
    fill_in "Imagenconsignacion", with: @donacione.ImagenConsignacion
    fill_in "Latituddirreclamardonacion", with: @donacione.Latituddirreclamardonacion
    fill_in "Longituddirreclamardonacion", with: @donacione.LongitudDirReclamarDonacion
    fill_in "Montodonar", with: @donacione.MontoDonar
    fill_in "Objeto", with: @donacione.Objeto_id
    fill_in "Tiempoesperadonador", with: @donacione.TiempoEsperaDonador
    fill_in "Tiempovoluntariado", with: @donacione.TiempoVoluntariado
    fill_in "Tipodonacion", with: @donacione.TipoDonacion_id
    fill_in "Usuario", with: @donacione.Usuario_id
    click_on "Update Donacione"

    assert_text "Donacione was successfully updated"
    click_on "Back"
  end

  test "destroying a Donacione" do
    visit donaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donacione was successfully destroyed"
  end
end
