class Usuarios < ActiveRecord::Migration[5.2]
  def change

    create_table :usuarios do |t|
      t.integer :Idusuarios
      t.text :Nombre_usuario
      t.text :Apellido_usuario
      t.text :Tipo_documento
      t.text :Documento
      t.text :Cel_personal
      t.text :Correo_personal
      t.text :Contrasena
      t.text :Direccion_residencia
      t.text :Latitud_dir_residencia
      t.text :Longitud_dir_encargado
      t.timestamp :Fecha_creacion
      t.text :Estado
      t.text :Rol
     end
  end
end
