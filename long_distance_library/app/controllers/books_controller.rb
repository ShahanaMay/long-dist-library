class BooksController < ActionController::Base

  # Values needed for my static pages. :)
  def index
    @title = "Books"
    @books = Book.all
  end
  
  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to book_path, notice: "Book was successfully scheduled. Thank you!"
    else
      render :new, alert: "Book was not saved"
    end
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  private
  
  def book_params
    params.require(:title).permit(:author, :series, :isbn, :illustrator, :genre)
  end
end