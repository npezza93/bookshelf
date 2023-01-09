# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_page, only: :index
  before_action :set_book, only: :show

  PER_PAGE = 100

  def index
    @books =
      if params[:q].present?
        Book.search(params[:q]).where(**filters).limit(PER_PAGE, offset).results
      else
        Book.limit(PER_PAGE).offset(offset)
      end.includes(:authors).all
  end

  def show
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def filters
    f = {}
    f[:format] = params[:format].compact_blank if params[:format]
    f.compact_blank
  end

  def offset
    @page * PER_PAGE
  end

  def set_page
    @page = params[:page].to_i
  end
end
