class fundaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :fundaciones do |t|
<<<<<<< HEAD
      t.integer :banco_id
=======
      t.integer :Banco_id
>>>>>>> 14cb8fd53047e1d7ef0677e7605daa5bc54fd2f6
      t.integer :Usuario_id #Usuario encargado
      t.text :NombreFundacion
      t.text :NitFundacion
      #enum TipoFundacion: { AM: 'adulto mayor', DR: 'drogadictos', NPI: 'niños primera infancia', AD: 'adolecentes', PV: 'poblacion vulnerable' }
      t.datetime :FechaCreacion
      t.text :DirFundacion
      t.text :LatDirFundacion
      t.text :LonDirFundacion
      t.decimal :TelFundacion
      t.decimal :CelFundacion
      t.text :CorreoFundacion
      #enum Estado: { A: 'Activo', I: 'Inactivo' }
      t.text :ImagenLogo
      #enum TipoCuenta: { A: 'Cuenta de Ahorros', C: 'Cuenta Corriente' }
      t.text :NumeroCuenta
      t.text :Descripcion
       
      t.timestamps null: false
    end
  end 
end
