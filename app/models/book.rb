# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :format

  has_many :book_authors, foreign_key: :uuid
  has_many :authors, through: :book_authors

  has_many :book_categories, foreign_key: :uuid
  has_many :categories, through: :book_categories
end
