# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.text :description
      t.string :language
      t.string :title
      t.integer :rating_count
      t.float :rating
      t.date :publication_date
      t.float :dimension_x
      t.float :dimension_y
      t.float :dimension_z
      t.string :ages
      t.belongs_to :format

      t.timestamps
    end
  end
end
