class Usuarios < ActiveRecord::Migration[5.2]
  def change

    create_table :usuarios do |t|
      t.integer :idusuarios
      t.string :nombre_usuario
      t.string :apellido_usuario
      t.string :tipo_documento
      t.string :documento character
      t.string :cel_personal
      t.string :correo_personal character
      t.string :contrasena character
      t.string :direccion_residencia
      t.string :latitud_dir_residencia
      t.string :longitud_dir_encargado
      t.timestamp :fecha_creacion
      t.string :estado estado
      t.string :rol rol
     end
  end
end
