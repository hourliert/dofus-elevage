# frozen_string_literal: true

class CoupleRelation < Relation
  validate :first_mount, :mounts_must_have_different_sexe
  validate :second_mount, :mounts_must_have_different_sexe

  def husband
    first_mount
  end

  def spouse
    second_mount
  end

  private def mounts_must_have_different_sexe
    if first_mount.sexe == second_mount.sexe
      errors.add(:mount_sexes, "Couple members must have different sexes")
    end
  end
end
