require 'test_helper'

class FundacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fundacione = fundaciones(:one)
  end

  test "should get index" do
    get fundaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_fundacione_url
    assert_response :success
  end

  test "should create fundacione" do
    assert_difference('Fundacione.count') do
      post fundaciones_url, params: { fundacione: { Banco_id: @fundacione.Banco_id, CelFundacion: @fundacione.CelFundacion, CorreoFundacion: @fundacione.CorreoFundacion, Descripcion: @fundacione.Descripcion, DirFundacion: @fundacione.DirFundacion, FechaCreacion: @fundacione.FechaCreacion, ImagenLogo: @fundacione.ImagenLogo, LatDirFundacion: @fundacione.LatDirFundacion, LonDirFundacion: @fundacione.LonDirFundacion, NitFundacion: @fundacione.NitFundacion, NombreFundacion: @fundacione.NombreFundacion, NumeroCuenta: @fundacione.NumeroCuenta, TelFundacion: @fundacione.TelFundacion, Usuario_id: @fundacione.Usuario_id } }
    end

    assert_redirected_to fundacione_url(Fundacione.last)
  end

  test "should show fundacione" do
    get fundacione_url(@fundacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_fundacione_url(@fundacione)
    assert_response :success
  end

  test "should update fundacione" do
    patch fundacione_url(@fundacione), params: { fundacione: { Banco_id: @fundacione.Banco_id, CelFundacion: @fundacione.CelFundacion, CorreoFundacion: @fundacione.CorreoFundacion, Descripcion: @fundacione.Descripcion, DirFundacion: @fundacione.DirFundacion, FechaCreacion: @fundacione.FechaCreacion, ImagenLogo: @fundacione.ImagenLogo, LatDirFundacion: @fundacione.LatDirFundacion, LonDirFundacion: @fundacione.LonDirFundacion, NitFundacion: @fundacione.NitFundacion, NombreFundacion: @fundacione.NombreFundacion, NumeroCuenta: @fundacione.NumeroCuenta, TelFundacion: @fundacione.TelFundacion, Usuario_id: @fundacione.Usuario_id } }
    assert_redirected_to fundacione_url(@fundacione)
  end

  test "should destroy fundacione" do
    assert_difference('Fundacione.count', -1) do
      delete fundacione_url(@fundacione)
    end

    assert_redirected_to fundaciones_url
  end
end
