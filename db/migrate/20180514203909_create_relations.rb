# frozen_string_literal: true

class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.string :type
      t.bigint :mount_id
      t.bigint :related_id
      t.timestamps
    end

    add_foreign_key :relations, :mounts
    add_foreign_key :relations, :mounts, column: :related_id
    add_index :relations, %i[mount_id related_id], unique: true
  end
end
