class Personas < ActiveRecord::Migration[5.2]
  def change
    create_table :Personas do |t|
      #t.integer :Idusuarios
      t.text :Nombre_usuario
      t.text :Documento
      t.timestamp :Fecha_creacion

     end
  end
end
