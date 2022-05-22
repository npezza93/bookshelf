# frozen_string_literal: true

class FormatsController < ApplicationController
  def index
    @formats = Format.all
  end
end
