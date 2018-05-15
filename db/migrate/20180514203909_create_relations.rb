# frozen_string_literal: true

class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations, id: false do |t|
      t.string :type
      t.bigint :first_mount_id
      t.bigint :second_mount_id
      t.timestamps
    end

    add_foreign_key :relations, :mounts, column: :first_mount_id
    add_foreign_key :relations, :mounts, column: :second_mount_id
    add_index :relations, %i[type first_mount_id second_mount_id], unique: true
  end
end
