class bancos < ActiveRecord::Migration[5.2]
  def change
    create_table :bancos do |t|
      t.text :NombreBanco
      t.timestamps null: false
    end
  end
end
