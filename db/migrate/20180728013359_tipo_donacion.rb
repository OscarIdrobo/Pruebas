class TipoDonacion < ActiveRecord::Migration[5.2]
  def change
    create_table :TipoDonacion do |t|
      t.integer :IdTipoDonacion
      t.text :Desc_Tipo_Donacion
      
 
      t.timestamps null: false
    end
  end
end
