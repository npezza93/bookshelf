# frozen_string_literal: true

class CreateFormats < ActiveRecord::Migration[7.0]
  def change
    create_table :formats do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end
