class conexionfundaciontipos < ActiveRecord::Migration[5.2]
  def change
    create_table :conexionfundaciontipos do |t|
      t.integer :Fundacion_id
      t.integer :TipoDonacion_id
      t.timestamps null: false
    end
  end
end 
