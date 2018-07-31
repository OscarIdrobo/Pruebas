class LlaveBancoFundaciones < ActiveRecord::Migration[5.2]
  def change
    add_foreing_key Bancos, IdBanco, index: true #Llave foranea y union entre las tablas
    add_foreing_key Bancos, IdBanco, index: true #Llave foranea y union entre las tablas
    add_foreing_key Bancos, IdBanco, index: true #Llave foranea y union entre las tablas
    add_foreing_key Bancos, IdBanco, index: true #Llave foranea y union entre las tablas
    add_foreing_key Bancos, IdBanco, index: true #Llave foranea y union entre las tablas

  end
end
