# frozen_string_literal: true

class Mount < ApplicationRecord
  belongs_to :generation
  has_many :children, through: :relations, foreign_key: "child_id"
  has_many :parents, through: :relations, foreign_key: "parent_id"
  has_many :relations

  def titi
    tata(5)
  end

  def tata(n)
    Rails.logger(n + 5)
  end
end
