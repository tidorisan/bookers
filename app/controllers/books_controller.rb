class BooksController < ApplicationController
	def top

	end

	def index
		@book = Book.new
		# @book = Book.find(params[:id])
	end

	def create
		book = Book.new(book_params)
		book.save
		# showがまだできていないので
		redirect_to books_path
	end

	def show
		
	end

	def edit
		
	end

	private
	def book_params
		params.require(:book).permit(:title, :body)
	end
end