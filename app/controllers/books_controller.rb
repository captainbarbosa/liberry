class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @book.author = Author.new
  end

  def show
    @book = Book.find(params[:id])
    @reservation = Reservation.where(:book_id => @book.id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)

    redirect_to action: "index"
  end

  def create
    @book = Book.create(book_params)

    redirect_to action: "index"
  end

  def destroy
    Book.find(params[:id]).destroy

   redirect_to action: "index"
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, author_attributes: [:name])
  end

end
