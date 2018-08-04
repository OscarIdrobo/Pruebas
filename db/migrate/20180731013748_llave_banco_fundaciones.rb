class LlaveBancoFundaciones < ActiveRecord::Migration[5.2]
  def change
    add_reference :Bancos, :IdBanco, index: true
    add_reference :Fundaciones, :IdFundacion, index: true
    add_foreign_key :Bancos, :Fundaciones
  end
end
