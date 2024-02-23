class BooksController < ApplicationController

def create
      @books = Book.new(book_params)
      if @books.save
        flash[:notice] = "投稿に成功しました。"
    redirect_to book_path(book.id)
      else
        @books = Book.all
    render:index
      end
end


def destroy
  @books = Book.find(params[:id])
  @books.destroy
  redirect_to '/books'
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
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  
private
def book_params
  params.require(:book).permit(:title, :body)
  
end
end