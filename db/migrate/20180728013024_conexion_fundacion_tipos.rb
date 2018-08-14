<<<<<<< HEAD
class conexionfundaciontipos < ActiveRecord::Migration[5.2]
  def change
    create_table :conexionfundaciontipos do |t|
=======
class conexionFundacionTipos < ActiveRecord::Migration[5.2]
  def change
    create_table :conexionFundacionTipos do |t|
>>>>>>> 14cb8fd53047e1d7ef0677e7605daa5bc54fd2f6
      t.integer :Fundacion_id
      t.integer :TipoDonacion_id
      t.timestamps null: false
    end
  end
end 
