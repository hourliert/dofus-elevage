# frozen_string_literal: true

class AddLevelToGeneration < ActiveRecord::Migration[5.2]
  def change
    add_column :generations, :level, :integer
  end
end
