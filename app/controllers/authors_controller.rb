class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def create
    @author = Book.create(author_params)

    redirect_to action: "index"
  end

  def book_params
    params.require(:author).permit(:id, :name)
  end
end
