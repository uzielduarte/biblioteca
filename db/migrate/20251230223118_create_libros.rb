class CreateLibros < ActiveRecord::Migration[8.1]
  def change
    create_table :libros do |t|
      t.string :nombre
      t.string :autor
      t.text :descripcion
      t.integer :cantidad
      t.date :fecha_publicacion

      t.timestamps
    end
  end
end
