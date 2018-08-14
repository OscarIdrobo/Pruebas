<<<<<<< HEAD
class tipodonaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :tipodonaciones do |t|
=======
class tipoDonaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_donaciones do |t|
>>>>>>> 14cb8fd53047e1d7ef0677e7605daa5bc54fd2f6
      t.text :Desc_Tipo_Donacion
      t.timestamps null: false
    end
  end
end 
