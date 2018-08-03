class CreateAdministradors < ActiveRecord::Migration[5.2]
  def change
    create_table :administradors do |t|

      t.timestamps
    end
  end
end
