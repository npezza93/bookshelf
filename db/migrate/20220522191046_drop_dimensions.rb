# frozen_string_literal: true

class DropDimensions < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :dimension_x
    remove_column :books, :dimension_y
    remove_column :books, :dimension_z
  end
end
