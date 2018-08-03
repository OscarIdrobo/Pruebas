class UnoMuchosServidorDireccionip < ActiveRecord::Migration[5.2]
  def change
    add_column("direccion_ips","servidor_id","string")
  end
end
