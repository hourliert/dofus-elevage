# frozen_string_literal: true

class RemoveKindAndRaceFromMounts < ActiveRecord::Migration[5.2]
  def change
    remove_column :mounts, :race, :string
    remove_column :mounts, :kind, :string
  end
end
