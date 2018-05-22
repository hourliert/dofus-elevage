# frozen_string_literal: true

class CreateGenerations < ActiveRecord::Migration[5.2]
  def change
    create_table :generations do |t|
      t.string :name, null: false
      t.string :image_url
      t.integer :level, null: false, default: 1

      t.timestamps
    end

    add_reference :generations, :race, foreign_key: true
    add_reference :mounts, :generation, foreign_key: true
  end
end
