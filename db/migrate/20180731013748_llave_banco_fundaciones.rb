class LlaveBancoFundaciones < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :Fundaciones, :Bancos # Muchas Fundaciones tienen el mismo banco
   # add_foreign_key :Fundaciones, :Usuarios # Muchas Fundacones tienen el mismo Usuario
   # add_foreign_key :Donaciones, :Objetos # Muchas Donaciones tienen el mismo Objeto
   # add_foreign_key :Donaciones, :Usuarios # Muchas Donaciones tienen el mismo usuario
   # add_foreign_key :Donaciones, :Fundaciones # Muchas Donaciones tienen la misma fundacion
   # add_foreign_key :Donaciones, :TipoDonaciones # Muchas Donaciones tienen el mismo TipoDonaciones
   # add_foreign_key :ConexionFundacionTipos, :Fundaciones # Muchas ConexionFundacionTipos tienen la misma fundacion
   # add_foreign_key :ConexionFundacionTipos, :TipoDonaciones # Muchas ConexionFundacionTipos tienen el mismo TipoDonaciones
  end 
end