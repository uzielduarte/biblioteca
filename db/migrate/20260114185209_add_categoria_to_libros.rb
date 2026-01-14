class AddCategoriaToLibros < ActiveRecord::Migration[8.1]
  def change
    add_reference :libros, :categoria, null: true, foreign_key: true
  end
end
