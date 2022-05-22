# frozen_string_literal: true

class BookCategory < ApplicationRecord
  belongs_to :book, primary_key: :uuid
  belongs_to :category, primary_key: :uuid, counter_cache: :books_count
end
