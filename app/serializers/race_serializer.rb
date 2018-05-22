# frozen_string_literal: true

class RaceSerializer < ApplicationSerializer
  attributes :id, :name
  has_many :generations
end
