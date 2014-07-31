class BooksController < ActionController::Base

  # Values needed for my static pages. :)
  def index
    @title = "Books"
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def edit 
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: "Book was successfully saved. Thank you!"
    else
      render :new, alert: "Book was not saved"
    end
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book, notice: "Book was successfully updated. Thank you!"
    else
      render :new, alert: "Book was not updated"
    end
  end
  
  def destroy
    @book = Book.find_by_id(params[:id])
    if @book
      @book.destroy
    end
    redirect_to books_path
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :author, :series, :isbn, :illustrator, :genre)
  end
end