require 'test_helper'

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_url
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post usuarios_url, params: { usuario: { Apellido_usuario: @usuario.Apellido_usuario, Cel_personal: @usuario.Cel_personal, Contrasena: @usuario.Contrasena, Correo_personal: @usuario.Correo_personal, Direccion_residencia: @usuario.Direccion_residencia, Documento: @usuario.Documento, Estado: @usuario.Estado, Fecha_creacion: @usuario.Fecha_creacion, Latitud_dir_residencia: @usuario.Latitud_dir_residencia, Longitud_dir_encargado: @usuario.Longitud_dir_encargado, Nombre_usuario: @usuario.Nombre_usuario, Rol: @usuario.Rol, Tipo_documento: @usuario.Tipo_documento } }
    end

    assert_redirected_to usuario_url(Usuario.last)
  end

  test "should show usuario" do
    get usuario_url(@usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_url(@usuario)
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { Apellido_usuario: @usuario.Apellido_usuario, Cel_personal: @usuario.Cel_personal, Contrasena: @usuario.Contrasena, Correo_personal: @usuario.Correo_personal, Direccion_residencia: @usuario.Direccion_residencia, Documento: @usuario.Documento, Estado: @usuario.Estado, Fecha_creacion: @usuario.Fecha_creacion, Latitud_dir_residencia: @usuario.Latitud_dir_residencia, Longitud_dir_encargado: @usuario.Longitud_dir_encargado, Nombre_usuario: @usuario.Nombre_usuario, Rol: @usuario.Rol, Tipo_documento: @usuario.Tipo_documento } }
    assert_redirected_to usuario_url(@usuario)
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete usuario_url(@usuario)
    end

    assert_redirected_to usuarios_url
  end
end
