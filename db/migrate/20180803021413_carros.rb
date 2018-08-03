class Carros < ActiveRecord::Migration[5.2]
  def change
    create_table :Carros do |t|
      #t.integer :Idusuarios
      t.text :Nombre_usuario
      t.text :Documento
      t.timestamp :Fecha_creacion

     end
  end
end
