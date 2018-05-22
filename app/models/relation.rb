# frozen_string_literal: true

class Relation < ApplicationRecord
  validates :first_mount, presence: true
  validates :second_mount, presence: true
end
