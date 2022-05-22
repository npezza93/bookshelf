# frozen_string_literal: true

class FormatsController < ApplicationController
  before_action :set_format, only: %i(show edit update destroy)

  def index
    @formats = Format.all
  end

  def show
  end

  def new
    @format = Format.new
  end

  def edit
  end

  def create
    @format = Format.new(format_params)

    if @format.save
      redirect_to format_url(@format),
                  notice: "Format was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @format.update(format_params)
      redirect_to format_url(@format),
                  notice: "Format was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @format.destroy

    redirect_to formats_url, notice: "Format was successfully destroyed."
  end

  private

  def set_format
    @format = Format.find(params[:id])
  end

  def format_params
    params.require(:format).permit(:uuid, :name)
  end
end
