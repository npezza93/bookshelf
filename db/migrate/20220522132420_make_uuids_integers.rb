# frozen_string_literal: true

class MakeUuidsIntegers < ActiveRecord::Migration[7.0]
  def change
    change_column :formats, :uuid, :integer
    change_column :categories, :uuid, :integer
    change_column :books, :uuid, :integer
    change_column :authors, :uuid, :integer
  end
end
