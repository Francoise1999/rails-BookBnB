class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def show

  end

  def new_book
    @book = Book.new
  end

  def edit

  end

  def create
  end
end
