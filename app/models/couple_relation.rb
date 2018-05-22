# frozen_string_literal: true

class CoupleRelation < Relation
  belongs_to :first_mount, class_name: "Mount", inverse_of: :husband_spouse_relations
  belongs_to :second_mount, class_name: "Mount", inverse_of: :spouse_husband_relations

  validate :first_mount, :mounts_have_different_sexe
  validates :first_mount, uniqueness: { scope: :second_mount, message: "This relation already exist" }

  def husband
    first_mount
  end

  def spouse
    second_mount
  end

  private def mounts_have_different_sexe
    if husband.sexe == spouse.sexe
      errors.add(:mount_sexes, "Couple members must have different sexes")
    end
  end
end
