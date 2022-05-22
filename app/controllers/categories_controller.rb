# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_category, only: %i(show edit update destroy)

  def index
    @categories =
      if params[:q]
        Category.search(params[:q]).results
      else
        Category.limit(50)
      end
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to category_url(@category),
                  notice: "Category was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @category.update(category_params)
      redirect_to category_url(@category),
                  notice: "Category was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy

    redirect_to categories_url, notice: "Category was successfully destroyed."
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :uuid)
  end
end
