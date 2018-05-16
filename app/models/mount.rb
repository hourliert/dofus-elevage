# frozen_string_literal: true

class Mount < ApplicationRecord
  belongs_to :generation

  has_many :father_mother_relations, dependent: :destroy, class_name: "CoupleRelation", foreign_key: "second_mount_id", inverse_of: :mount
  has_many :mother_father_relations, dependent: :destroy, class_name: "CoupleRelation", foreign_key: "first_mount_id", inverse_of: :mount
  has_many :parent_child_relations, dependent: :destroy, class_name: "FamilyRelation",  foreign_key: "second_mount_id", inverse_of: :mount
  has_many :child_parent_relations, dependent: :destroy, class_name: "FamilyRelation", foreign_key: "first_mount_id", inverse_of: :mount

  has_many :parents, through: :parent_child_relations, source: :first_mount
  has_many :children, through: :child_parent_relations, source: :second_mount
  has_many :husbands, through: :father_mother_relations, source: :first_mount
  has_many :spouses, through: :mother_father_relations, source: :second_mount

  MALE = "MALE".freeze
  FEMALE = "FEMALE".freeze
  SEXES = [MALE, FEMALE].freeze

  def father
    parents.find_by(sexe: MALE)
  end

  def mother
    parents.find_by(sexe: FEMALE)
  end
end
