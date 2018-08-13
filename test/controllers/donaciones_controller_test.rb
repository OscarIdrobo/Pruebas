require 'test_helper'

class DonacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donacione = donaciones(:one)
  end

  test "should get index" do
    get donaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_donacione_url
    assert_response :success
  end

  test "should create donacione" do
    assert_difference('Donacione.count') do
      post donaciones_url, params: { donacione: { DescripcionObjeto: @donacione.DescripcionObjeto, DireccionReclamarDonacion: @donacione.DireccionReclamarDonacion, EstadoDonacion: @donacione.EstadoDonacion, Fundacion_id: @donacione.Fundacion_id, ImagenConsignacion: @donacione.ImagenConsignacion, Latituddirreclamardonacion: @donacione.Latituddirreclamardonacion, LongitudDirReclamarDonacion: @donacione.LongitudDirReclamarDonacion, MontoDonar: @donacione.MontoDonar, Objeto_id: @donacione.Objeto_id, TiempoEsperaDonador: @donacione.TiempoEsperaDonador, TiempoVoluntariado: @donacione.TiempoVoluntariado, TipoDonacion_id: @donacione.TipoDonacion_id, Usuario_id: @donacione.Usuario_id } }
    end

    assert_redirected_to donacione_url(Donacione.last)
  end

  test "should show donacione" do
    get donacione_url(@donacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_donacione_url(@donacione)
    assert_response :success
  end

  test "should update donacione" do
    patch donacione_url(@donacione), params: { donacione: { DescripcionObjeto: @donacione.DescripcionObjeto, DireccionReclamarDonacion: @donacione.DireccionReclamarDonacion, EstadoDonacion: @donacione.EstadoDonacion, Fundacion_id: @donacione.Fundacion_id, ImagenConsignacion: @donacione.ImagenConsignacion, Latituddirreclamardonacion: @donacione.Latituddirreclamardonacion, LongitudDirReclamarDonacion: @donacione.LongitudDirReclamarDonacion, MontoDonar: @donacione.MontoDonar, Objeto_id: @donacione.Objeto_id, TiempoEsperaDonador: @donacione.TiempoEsperaDonador, TiempoVoluntariado: @donacione.TiempoVoluntariado, TipoDonacion_id: @donacione.TipoDonacion_id, Usuario_id: @donacione.Usuario_id } }
    assert_redirected_to donacione_url(@donacione)
  end

  test "should destroy donacione" do
    assert_difference('Donacione.count', -1) do
      delete donacione_url(@donacione)
    end

    assert_redirected_to donaciones_url
  end
end
