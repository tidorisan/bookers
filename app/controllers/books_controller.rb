class BooksController < ApplicationController
	def top
	end

	def index
		@book = Book.new
		@books = Book.all
	end

	def create
		@book = Book.new(book_params)
		if  @book.save
			flash[:notice] = "Book was successfully created."
			redirect_to book_path(@book.id)
		else
			@books = Book.all
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

	def update
		book = Book.find(params[:id])
		if book.update(book_params)
			flash[:notice] = "Book was successfully created."
			redirect_to book_path(book.id)
		else
			#link showの表示　変数
			@book = Book.find(params[:id])
			#error message
			flash[:notice] = "error"
			#link
			render "edit"
		end
	end

	def destroy
		# 変数指定できていないのでは
		book = Book.find(params[:id])
		book.destroy
		redirect_to books_path
	end

	private

	def book_params
		params.require(:book).permit(:title, :body, :opinion)
	end
end