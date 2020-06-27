class BooksController < ApplicationController
	def top

	end

	def index
		@book = Book.new
		# @book = Book.find(params[:id])

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