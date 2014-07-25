class BooksController < ActionController::Base

  # Values needed for my static pages. :)
  def index
    @title = "Books"
    @book = Book.first
  end
end