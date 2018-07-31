class Fundaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :Fundaciones do |t|
      t.integer :IdFundaciones
      t.text :NombreFundacion
      t.text :NitFundacion
      t.text :TipoFundacion
      #: { AM: 'adulto mayor', DR: 'drogadictos', NPI: 'niños primera infancia', AD: 'adolecentes', PV: 'poblacion vulnerable' }
      #enum TipoFundacion: [ :adulto mayor, :drogadictos, :niños primera infancia, :adolecentes, :poblacion vulnerable ]
      t.datetime :FechaCreacion
      t.text :DirFundacion
      t.text :LatDirFundacion
      t.text :LonDirFundacion
      t.integer :IdUsuarioEncargado
      t.decimal :TelFundacion
      t.decimal :CelFundacion
      t.text :CorreoFundacion
      t.text :Estado
      #enum Estado: { A: 'Activo', I: 'Inactivo' }
      t.text :ImagenLogo
      t.text :TipoCuenta
      #enum TipoCuenta: { A: 'Cuenta de Ahorros', C: 'Cuenta Corriente' }
      t.text :NumeroCuenta
      t.integer :IdBanco  
      t.text :Descripcion
       
      t.timestamps null: false
    end
  end
end 
