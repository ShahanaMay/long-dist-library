class StaticPagesController < ActionController::Base

  # Values needed for my static pages. :)
  def index
    @title = "Welcome"
    @book = Book.first
  end
end
