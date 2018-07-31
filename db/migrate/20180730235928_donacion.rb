class Donacion < ActiveRecord::Migration[5.2]
  def change
    create_table :Donacion do |t|
      t.integer :IdDonar
      t.integer :IdTipoDonacion
      t.integer :IdUsuarioDonador 
      t.integer :IdFundacionaDonar 
      t.text :DireccionReclamarDonacion 
      t.text :Latituddirreclamardonacion 
      t.text :LongitudDirReclamarDonacion
      t.datetime :TiempoEsperaDonador
      t.text :EstadoDonacion
      t.decimal :MontoDonar
      t.text :ImagenConsignacion
      t.integer :IdObjeto
      t.text :DescripcionObjeto
      t.datetime :TiempoVoluntariado
              

       
      t.timestamps null: false
    end
  end
end


  #idDonar INT NOT NULL DEFAULT nextval('idDonar'),
  #idTipo_Donacion INT NOT NULL,
  #idUsuario_Donador INT NOT NULL,
  #idFundacion_a_Donar INT NOT NULL,
  #Direccion_Reclamar_Donacion VARCHAR(45) NOT NULL,
  #Latitud_dir_reclamar_donacion VARCHAR(45) NOT NULL,
  #Longitud_dir_reclamar_donacion VARCHAR(45) NOT NULL,
  #Tiempo_Espera_Donador timestamp NOT NULL,
  #Estado_Donacion  Estado_Donacion NOT NULL,
  #Monto_Donar DECIMAL(50) NULL,
  #imagen_consignacion VARCHAR(45) NULL,
  #idObjeto INT NOT NULL,
  #Descripcion_Objeto VARCHAR(500) NOT NULL,
  #Tiempo_Voluntariado timestamp NULL,
  #PRIMARY KEY (idDonar));
