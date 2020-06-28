class BooksController < ApplicationController
	def top
	end

	def index
		@book = Book.new
		@books = Book.all
	end

	def create
		book = Book.new(book_params)
		if  book.save
			flash[:notice] = "Book was successfully created."
			redirect_to book_path(book.id)
		else
			flash[:notice] = "error"
			#ここエラーメッセージ
			render "index"
			# render :index
		end
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	private

	def book_params
		params.require(:book).permit(:title, :body, :opinion)
	end
end