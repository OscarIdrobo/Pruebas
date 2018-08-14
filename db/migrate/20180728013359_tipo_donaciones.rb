class tipodonaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :tipodonaciones do |t|
      t.text :Desc_Tipo_Donacion
      t.timestamps null: false
    end
  end
end 
