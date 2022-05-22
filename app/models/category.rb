# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :book_categories, primary_key: :uuid
  has_many :books, through: :book_categories

  redi_search do
    text_field :name, phonetic: "dm:en"
  end
end
