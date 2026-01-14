class Libro < ApplicationRecord
    belongs_to :categoria
    has_one_attached :portada
    validates :nombre, presence: true
    validates :autor, presence: true
    validates :descripcion, length: { minimum: 10 }, allow_blank: true
    validates :cantidad, numericality: { only_integer: true, greater_than: 0 }
    validates :fecha_publicacion, presence: true
    validate :fecha_no_futura
    validates :categoria, presence: true


    def fecha_no_futura
        if fecha_publicacion.present? && fecha_publicacion > Date.today
            errors.add(:fecha_publicacion, "no puede ser futura.")
        end
    end
end
