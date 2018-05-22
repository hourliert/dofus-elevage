# frozen_string_literal: true

class MountSerializer < ApplicationSerializer
  attributes :id, :name, :sexe
  belongs_to :generation
  has_many :husbands
  has_many :spouses
  has_many :parents
  has_many :children
end
