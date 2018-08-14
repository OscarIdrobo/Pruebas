class LlavesForaneas < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :fundaciones, :usuarios # Muchas Fundaciones tienen el mismo Usuario
    
  end
end
