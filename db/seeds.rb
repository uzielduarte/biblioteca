# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
categorias = [
    "Terror",
    "Fantasia",
    "Comedia",
    "Historico",
    "Religioso",
    "Educativo"
]

categorias.each do |nombre|
  Categoria.find_or_create_by!(nombre: nombre)
end

categoria_por_defecto = Categoria.find_by!(nombre: "Educativo")

Libro.where(categoria_id: nil).find_each do |libro|
  libro.update!(categoria: categoria_por_defecto)
end