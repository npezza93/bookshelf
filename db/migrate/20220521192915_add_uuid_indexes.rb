# frozen_string_literal: true

class AddUuidIndexes < ActiveRecord::Migration[7.0]
  def change
    add_index :authors, :uuid
    add_index :books, :uuid
    add_index :categories, :uuid
    add_index :formats, :uuid
  end
end
