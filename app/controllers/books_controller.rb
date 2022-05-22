# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_book, only: :show

  def index
    @books =
      if params[:q].present?
        Book.search(params[:q]).results.includes(:authors)
      else
        set_page_and_extract_portion_from Book.includes(:authors).all
      end
  end

  def show
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
