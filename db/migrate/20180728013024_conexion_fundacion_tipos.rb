class conexionFundacionTipos < ActiveRecord::Migration[5.2]
  def change
    create_table :conexionFundacionTipos do |t|
      t.integer :Fundacion_id
      t.integer :TipoDonacion_id
      t.timestamps null: false
    end
  end
end 
