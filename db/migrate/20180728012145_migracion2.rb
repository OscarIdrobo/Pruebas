class Migracion2 < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :nombre
      t.text :descripcion
      t.text :otrocampo
 
      t.timestamps null: false
    end
   end
end
