class CreateServidors < ActiveRecord::Migration[5.2]
  def change
    create_table :servidors do |t|
      t.string("nombre", :limit => 50, :null => false)
      
      t.timestamps
    end
  end
end
