class LibrosController < ApplicationController
  before_action :set_libro, only: %i[ show edit update destroy ]

  def index
    @libros = Libro.all
  end

  def show
  end

  def new
    @libro = Libro.new
  end

  def create
    @libro = Libro.new(libro_params)
    if @libro.save
      redirect_to @libro, notice: "Libro agregado exitosamente."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @libro.update(libro_params)
      redirect_to @libro, notice: "Libro actualizado exitosamente."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @libro.destroy
    redirect_to libros_path, notice: "Libro borrado exitosamente."
  end

  private
    def set_libro
      @libro = Libro.find(params[:id])      
    end

    def libro_params
      params.expect(libro: [ :nombre, :autor, :descripcion, :cantidad, :fecha_publicacion ])
    end
end
