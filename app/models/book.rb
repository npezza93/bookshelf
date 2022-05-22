# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :format, primary_key: :uuid

  has_many :book_authors, primary_key: :uuid, dependent: :restrict_with_error
  has_many :authors, through: :book_authors

  has_many :book_categories, primary_key: :uuid, dependent: :restrict_with_error
  has_many :categories, through: :book_categories
end
