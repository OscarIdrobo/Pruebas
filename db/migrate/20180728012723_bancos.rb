class Bancos < ActiveRecord::Migration[5.2]
  def change
    create_table :Bancos do |t|
      t.text :NombreBanco
      t.timestamps null: false
    end
  end
end