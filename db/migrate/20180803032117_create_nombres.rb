class CreateNombres < ActiveRecord::Migration[5.2]
  def change
    create_table :nombres do |t|
      t.string("nombre", :limit => 25, :null => false)
      t.string("apellidos", :limit => 50, :null => false)

      t.timestamps
    end
  end
end
