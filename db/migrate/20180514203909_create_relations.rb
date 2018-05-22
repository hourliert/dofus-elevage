# frozen_string_literal: true

class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.string :type, null: false
      t.bigint :first_mount_id, null: false
      t.bigint :second_mount_id, null: false
      t.timestamps
    end

    add_foreign_key :relations, :mounts, column: :first_mount_id
    add_foreign_key :relations, :mounts, column: :second_mount_id
    add_index :relations, %i[type first_mount_id second_mount_id], unique: true
    add_index :relations, %i[type first_mount_id]
    add_index :relations, %i[type second_mount_id]
  end
end
