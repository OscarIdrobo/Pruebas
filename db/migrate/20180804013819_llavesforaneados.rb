class Llavesforaneados < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :Donaciones, :Objetos # Muchas Donaciones tienen el mismo Objeto
    add_foreign_key :Donaciones, :Usuarios # Muchas Donaciones tienen el mismo usuario
    add_foreign_key :Donaciones, :Fundaciones, column: :Fundacion_id # Muchas Donaciones tienen la misma fundacion
    add_foreign_key :Donaciones, :TipoDonaciones, column: :TipoDonacion_id # Muchas Donaciones tienen el mismo TipoDonaciones
    add_foreign_key :ConexionFundacionTipos, :Fundaciones, column: :Fundacion_id # Muchas ConexionFundacionTipos tienen la misma fundacion
    add_foreign_key :ConexionFundacionTipos, :TipoDonaciones, column: :TipoDonacion_id # Muchas ConexionFundacionTipos tienen el mismo TipoDonaciones
  end
end
