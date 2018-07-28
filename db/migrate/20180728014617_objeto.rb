class Objeto < ActiveRecord::Migration[5.2]
  def change
    create_table :TipoDonacion do |t|
      t.integer :IdObjeto
      t.text :Nombre_Objeto
      t.text :Descripcion

      t.timestamps null: false
    end
  end
end
