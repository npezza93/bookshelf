# frozen_string_literal: true

class AddCounterCacheToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :books_count, :integer
  end
end
