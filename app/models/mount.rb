# frozen_string_literal: true

class Mount < ApplicationRecord
  belongs_to :generation
  has_many :child_relations, dependent: :destroy
  has_many :parent_relations, dependent: :destroy
  has_many :children, through: :child_relations, source: :related
  has_many :parents, through: :parent_relations, source: :related

  MALE = "MALE".freeze
  FEMALE = "FEMALE".freeze
  SEXES = [MALE, FEMALE].freeze
end
