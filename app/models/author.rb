# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :book_authors, primary_key: :uuid, dependent: :restrict_with_error
  has_many :books, through: :book_authors, counter_cache: true

  redi_search do
    text_field :name, phonetic: "dm:en"
  end
end
