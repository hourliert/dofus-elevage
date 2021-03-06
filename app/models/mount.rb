# frozen_string_literal: true

class Mount < ApplicationRecord
  MALE = "MALE".freeze
  FEMALE = "FEMALE".freeze
  SEXES = [MALE, FEMALE].freeze

  belongs_to :generation

  has_many :husband_spouse_relations, dependent: :destroy, class_name: "CoupleRelation", foreign_key: "second_mount_id", inverse_of: :first_mount
  has_many :spouse_husband_relations, dependent: :destroy, class_name: "CoupleRelation", foreign_key: "first_mount_id", inverse_of: :second_mount
  has_many :parent_child_relations, dependent: :destroy, class_name: "ParentRelation",  foreign_key: "second_mount_id", inverse_of: :first_mount
  has_many :child_parent_relations, dependent: :destroy, class_name: "ParentRelation", foreign_key: "first_mount_id", inverse_of: :second_mount

  has_many :parents, through: :parent_child_relations, source: :first_mount
  has_many :children, through: :child_parent_relations, source: :second_mount
  has_many :husbands, through: :husband_spouse_relations, source: :first_mount
  has_many :spouses, through: :spouse_husband_relations, source: :second_mount

  validates :name, presence: true
  validates :generation, presence: true

  def father
    parents.find_by(sexe: MALE)
  end

  def mother
    parents.find_by(sexe: FEMALE)
  end
end
