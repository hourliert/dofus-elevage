# frozen_string_literal: true

class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.bigint :mount_id
      t.bigint :parent_id
      t.bigint :child_id
      t.timestamps
    end

    add_foreign_key :relations, :mounts
    add_foreign_key :relations, :mounts, column: :parent_id
    add_foreign_key :relations, :mounts, column: :child_id
    add_index :relations, %i[mount_id parent_id child_id], unique: true
  end
end
