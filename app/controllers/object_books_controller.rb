class ObjectBooksController < ApplicationController
  before_action :set_object_book, only: [:show, :edit, :update, :destroy]

  # GET /object_books
  # GET /object_books.json
  def index
    @object_books = ObjectBook.all
  end

  # GET /object_books/1
  # GET /object_books/1.json
  def show
  end

  # GET /object_books/new
  def new
    @object_book = ObjectBook.new
  end

  # GET /object_books/1/edit
  def edit
  end

  # POST /object_books
  # POST /object_books.json
  def create
    @object_book = ObjectBook.new(object_book_params)

    respond_to do |format|
      if @object_book.save
        format.html { redirect_to @object_book, notice: 'Object book was successfully created.' }
        format.json { render :show, status: :created, location: @object_book }
      else
        format.html { render :new }
        format.json { render json: @object_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /object_books/1
  # PATCH/PUT /object_books/1.json
  def update
    respond_to do |format|
      if @object_book.update(object_book_params)
        format.html { redirect_to @object_book, notice: 'Object book was successfully updated.' }
        format.json { render :show, status: :ok, location: @object_book }
      else
        format.html { render :edit }
        format.json { render json: @object_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /object_books/1
  # DELETE /object_books/1.json
  def destroy
    @object_book.destroy
    respond_to do |format|
      format.html { redirect_to object_books_url, notice: 'Object book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_object_book
      @object_book = ObjectBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def object_book_params
      params.fetch(:object_book, {})
    end
end
