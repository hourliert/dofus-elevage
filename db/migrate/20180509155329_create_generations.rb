# frozen_string_literal: true

class CreateGenerations < ActiveRecord::Migration[5.2]
  def change
    create_table :generations do |t|
      t.string :name, null: false
      t.string :image_url

      t.timestamps
    end

    add_reference :generations, :family, foreign_key: true
    add_reference :mounts, :generation, foreign_key: true
  end
end
