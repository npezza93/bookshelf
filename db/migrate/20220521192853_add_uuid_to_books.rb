# frozen_string_literal: true

class AddUuidToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :uuid, :string
  end
end
