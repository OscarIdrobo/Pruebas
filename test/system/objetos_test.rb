require "application_system_test_case"

class ObjetosTest < ApplicationSystemTestCase
  setup do
    @objeto = objetos(:one)
  end

  test "visiting the index" do
    visit objetos_url
    assert_selector "h1", text: "Objetos"
  end

  test "creating a Objeto" do
    visit objetos_url
    click_on "New Objeto"

    fill_in "Descripcion", with: @objeto.Descripcion
    fill_in "Nombre Objeto", with: @objeto.Nombre_Objeto
    click_on "Create Objeto"

    assert_text "Objeto was successfully created"
    click_on "Back"
  end

  test "updating a Objeto" do
    visit objetos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @objeto.Descripcion
    fill_in "Nombre Objeto", with: @objeto.Nombre_Objeto
    click_on "Update Objeto"

    assert_text "Objeto was successfully updated"
    click_on "Back"
  end

  test "destroying a Objeto" do
    visit objetos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Objeto was successfully destroyed"
  end
end
