# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories =
      if params[:q].present?
        Category.search(params[:q]).results
      else
        set_page_and_extract_portion_from Category.all
      end
  end
end
