class LlaveUnoUnoNombreAdministrador < ActiveRecord::Migration[5.2]
  def change
    add_column("administradors","nombre_id","string")
  end
end
