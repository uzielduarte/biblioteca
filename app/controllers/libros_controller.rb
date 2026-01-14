class LibrosController < ApplicationController
  before_action :set_libro, only: %i[ show edit update destroy ]

  def index
    @libros = Libro.all
  end

  def show
  end

  def new
    @libro = Libro.new
    @categorias = Categoria.order(:nombre)
  end

  def create
    @libro = Libro.new(libro_params)
    if @libro.save
      redirect_to @libro, notice: "Libro agregado exitosamente."
    else
      @categorias = Categoria.order(:nombre)
      flash.now[:alert] = @libro.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @categorias = Categoria.order(:nombre)
  end

  def update
    if @libro.update(libro_params)
      redirect_to @libro, notice: "Libro actualizado exitosamente."
    else
      @categorias = Categoria.order(:nombre)
      flash.now[:alert] = @libro.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @libro.cantidad <= 2
      if @libro.destroy
        redirect_to libros_path, notice: "Libro borrado exitosamente."
      else
        redirect_to @libro, alert: "No se puede borrar el libro."
      end
    else
      redirect_to @libro, alert: "Para borrar un libro su cantidad debe ser menor o igual a 2."
    end
  end

  private
    def set_libro
      @libro = Libro.find(params[:id])      
    end

    def libro_params
      params.expect(libro: [ :nombre, :autor, :descripcion, :cantidad, :fecha_publicacion, :portada, :categoria_id ])
    end
end
