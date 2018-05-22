# frozen_string_literal: true

class CreateMounts < ActiveRecord::Migration[5.2]
  def change
    create_table :mounts do |t|
      t.string :name, null: false
      t.string :sexe, null: false, default: "MALE"

      t.timestamps
    end
  end
end
