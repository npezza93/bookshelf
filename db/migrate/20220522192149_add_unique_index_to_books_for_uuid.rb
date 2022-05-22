# frozen_string_literal: true

class AddUniqueIndexToBooksForUuid < ActiveRecord::Migration[7.0]
  def change
    remove_index :books, :uuid
    add_index :books, :uuid, unique: true
  end
end
