# frozen_string_literal: true

class Mount < ApplicationRecord
  belongs_to :generation
  has_many :relations, dependent: :destroy
  has_many :children, through: :relations, foreign_key: "child_id"
  has_many :parents, through: :relations, foreign_key: "parent_id"
end
