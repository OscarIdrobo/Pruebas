require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "New Usuario"

    fill_in "Apellido Usuario", with: @usuario.Apellido_usuario
    fill_in "Cel Personal", with: @usuario.Cel_personal
    fill_in "Contrasena", with: @usuario.Contrasena
    fill_in "Correo Personal", with: @usuario.Correo_personal
    fill_in "Direccion Residencia", with: @usuario.Direccion_residencia
    fill_in "Documento", with: @usuario.Documento
    fill_in "Estado", with: @usuario.Estado
    fill_in "Fecha Creacion", with: @usuario.Fecha_creacion
    fill_in "Latitud Dir Residencia", with: @usuario.Latitud_dir_residencia
    fill_in "Longitud Dir Encargado", with: @usuario.Longitud_dir_encargado
    fill_in "Nombre Usuario", with: @usuario.Nombre_usuario
    fill_in "Rol", with: @usuario.Rol
    fill_in "Tipo Documento", with: @usuario.Tipo_documento
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Edit", match: :first

    fill_in "Apellido Usuario", with: @usuario.Apellido_usuario
    fill_in "Cel Personal", with: @usuario.Cel_personal
    fill_in "Contrasena", with: @usuario.Contrasena
    fill_in "Correo Personal", with: @usuario.Correo_personal
    fill_in "Direccion Residencia", with: @usuario.Direccion_residencia
    fill_in "Documento", with: @usuario.Documento
    fill_in "Estado", with: @usuario.Estado
    fill_in "Fecha Creacion", with: @usuario.Fecha_creacion
    fill_in "Latitud Dir Residencia", with: @usuario.Latitud_dir_residencia
    fill_in "Longitud Dir Encargado", with: @usuario.Longitud_dir_encargado
    fill_in "Nombre Usuario", with: @usuario.Nombre_usuario
    fill_in "Rol", with: @usuario.Rol
    fill_in "Tipo Documento", with: @usuario.Tipo_documento
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
