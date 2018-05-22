# frozen_string_literal: true

class Race < ApplicationRecord
  has_many :generations, dependent: :destroy

  validates :name, presence: true
end
