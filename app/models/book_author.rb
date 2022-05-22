# frozen_string_literal: true

class BookAuthor < ApplicationRecord
  belongs_to :book, primary_key: :uuid
  belongs_to :author, primary_key: :uuid
end
