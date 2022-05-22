# frozen_string_literal: true

class AuthorsController < ApplicationController
  def index
    @authors =
      if params[:q].present?
        Author.search(params[:q]).results
      else
        set_page_and_extract_portion_from Author.all
      end
  end
end
