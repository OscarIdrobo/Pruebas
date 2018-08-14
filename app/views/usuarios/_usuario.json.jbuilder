json.extract! usuario, :id, :Nombre_usuario, :Apellido_usuario, :Tipo_documento, :Documento, :Cel_personal, :Correo_personal, :Contrasena, :Direccion_residencia, :Latitud_dir_residencia, :Longitud_dir_encargado, :Fecha_creacion, :Estado, :Rol, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
