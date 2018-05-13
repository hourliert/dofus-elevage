# frozen_string_literal: true

class CreateMounts < ActiveRecord::Migration[5.2]
  def change
    create_table :mounts do |t|
      t.string :name
      t.boolean :sexe
      t.string :kind
      t.string :race

      t.timestamps
    end
  end
end