# frozen_string_literal: true

class AddCounterCacheToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :books_count, :integer
  end
end
