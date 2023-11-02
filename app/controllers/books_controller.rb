class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @books = Book.all
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
