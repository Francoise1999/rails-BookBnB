class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    if @book.save
      redirect_to book_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "Votre livre a ete mis a jour"
    else
      render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :author, :category, :year, :price)
  end
end
