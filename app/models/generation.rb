# frozen_string_literal: true

class Generation < ApplicationRecord
  belongs_to :race
  has_many :mounts, dependent: :destroy

  validates :name, presence: true
  validates :race, presence: true
  validates :level, numericality: { greater_than: 0 }
end
