class Llavesforaneados < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :donaciones, :objetos # Muchas Donaciones tienen el mismo Objeto
    add_foreign_key :donaciones, :usuarios # Muchas Donaciones tienen el mismo usuario
    add_foreign_key :donaciones, :fundaciones, column: :Fundacion_id # Muchas Donaciones tienen la misma fundacion
    add_foreign_key :donaciones, :tipoDonaciones, column: :TipoDonacion_id # Muchas Donaciones tienen el mismo TipoDonaciones
    add_foreign_key :conexionfundaciontipos, :fundaciones, column: :Fundacion_id # Muchas ConexionFundacionTipos tienen la misma fundacion
    add_foreign_key :conexionfundaciontipos, :tipoDonaciones, column: :TipoDonacion_id # Muchas ConexionFundacionTipos tienen el mismo TipoDonaciones
  end
end
