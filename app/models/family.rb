# frozen_string_literal: true

class Family < ApplicationRecord
  has_many :generations, dependent: :destroy
end