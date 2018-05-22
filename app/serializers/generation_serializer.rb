# frozen_string_literal: true

class GenerationSerializer < ApplicationSerializer
  attributes :id, :name, :level
  belongs_to :race
end
