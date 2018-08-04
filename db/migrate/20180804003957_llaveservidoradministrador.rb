class Llaveservidoradministrador < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :administradors_servidors, :administradors
    add_foreign_key :administradors_servidors, :servidors
  end
end
