class TablaMuchosAMuchosAdministradorServidor < ActiveRecord::Migration[5.2]
  def change
    create_table :administradors_servidors, :id => false do |t|
      t.integer("administrador_id")
      t.integer("servidor_id")
    end
    add_index :administradors_servidors, ["administrador_id","servidor_id"], :name => 'admin_index'
  end
end
