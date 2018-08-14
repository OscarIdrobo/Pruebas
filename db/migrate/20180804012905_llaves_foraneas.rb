class LlavesForaneas < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :Fundaciones, :Usuarios # Muchas Fundaciones tienen el mismo Usuario
    
  end
end
