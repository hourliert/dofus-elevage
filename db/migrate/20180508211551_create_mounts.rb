# frozen_string_literal: true

class CreateMounts < ActiveRecord::Migration[5.2]
  def change
    create_table :mounts do |t|
      t.string :name
      t.boolean :sexe

      t.timestamps
    end
  end
end
