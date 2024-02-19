class BooksController < ApplicationController

def create
      book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
end


def destroy
  @books = Book.find(params[:id])
end

  def index
     @book = Book.new
     @books = Book.all
  end

  def show
  @books = Book.find(params[:id])
  
  end

  def edit
   @books = Book.find(params[:id])
  end
  
private
def book_params
  params.require(:book).permit(:title, :body)
  
end
end