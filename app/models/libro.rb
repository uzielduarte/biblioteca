class Libro < ApplicationRecord
    validates :nombre, presence: true
    validates :autor, presence: true
    validates :descripcion, length: { minimum: 10 }, allow_blank: true
    validates :cantidad, numericality: { only_integer: true, greater_than: 0 }
    validates :fecha_publicacion, presence: true
    validate :fecha_no_futura


    def fecha_no_futura
        if fecha_publicacion.present? && fecha_publicacion > Date.today
            errors.add(:fecha_publicacion, "Fecha de publicacion no puede ser futura.")
        end
    end
end
