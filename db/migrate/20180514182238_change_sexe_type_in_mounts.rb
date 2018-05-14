# frozen_string_literal: true

class ChangeSexeTypeInMounts < ActiveRecord::Migration[5.2]
  def change
    change_column :mounts, :sexe, :string, null: false
  end
end
