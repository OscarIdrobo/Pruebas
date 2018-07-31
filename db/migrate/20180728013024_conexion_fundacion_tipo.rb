class ConexionFundacionTipo < ActiveRecord::Migration[5.2]
  def change
    create_table :ConexionFundacionTipo do |t|
      t.integer :IdFundacion
      t.integer :IdTipoDonacion
      t.timestamps null: false
    end
  end
end 
