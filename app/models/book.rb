# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :format, primary_key: :uuid

  has_many :book_authors, primary_key: :uuid, dependent: :restrict_with_error
  has_many :authors, through: :book_authors

  has_many :book_categories, primary_key: :uuid, dependent: :restrict_with_error
  has_many :categories, through: :book_categories

  scope :search_import, -> { includes(:format, :authors, :categories) }

  redi_search do
    text_field :title, phonetic: "dm:en"
    numeric_field :rating_count, sortable: true
    numeric_field :rating, sortable: true
    text_field :ages
    tag_field :categories, separator: "|" do
      categories.map(&:name)
    end
    tag_field :authors, separator: "|" do
      authors.map(&:name)
    end
    text_field :format do
      format&.name
    end
  end
end
