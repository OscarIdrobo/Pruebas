require 'test_helper'

class TipoDonacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_donacione = tipo_donaciones(:one)
  end

  test "should get index" do
    get tipo_donaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_donacione_url
    assert_response :success
  end

  test "should create tipo_donacione" do
    assert_difference('TipoDonacione.count') do
      post tipo_donaciones_url, params: { tipo_donacione: { Desc_Tipo_Donacion: @tipo_donacione.Desc_Tipo_Donacion } }
    end

    assert_redirected_to tipo_donacione_url(TipoDonacione.last)
  end

  test "should show tipo_donacione" do
    get tipo_donacione_url(@tipo_donacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_donacione_url(@tipo_donacione)
    assert_response :success
  end

  test "should update tipo_donacione" do
    patch tipo_donacione_url(@tipo_donacione), params: { tipo_donacione: { Desc_Tipo_Donacion: @tipo_donacione.Desc_Tipo_Donacion } }
    assert_redirected_to tipo_donacione_url(@tipo_donacione)
  end

  test "should destroy tipo_donacione" do
    assert_difference('TipoDonacione.count', -1) do
      delete tipo_donacione_url(@tipo_donacione)
    end

    assert_redirected_to tipo_donaciones_url
  end
end
