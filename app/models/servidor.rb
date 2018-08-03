class Servidor < ApplicationRecord
    has_many :direccion_ip
    has_and_belongs_to_many :administrador
end
