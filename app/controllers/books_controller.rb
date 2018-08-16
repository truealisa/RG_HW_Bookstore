class BooksController < ApplicationController
  def index   # GET /books
    @books = Book.all
  end

  def show    # GET /books/:id
    @book = Book.find(params[:id])
  end

  def new     # GET /books/new
    # ...
  end

  def edit    # GET /books/:id/edit
    # ...
  end

  def create  # book /books/
    # ...
  end

  def update  # PATCH /books/:id PUT /books/:id
    # ...
  end

  def destroy # DELETE /books/:id
    # ...
  end
end
