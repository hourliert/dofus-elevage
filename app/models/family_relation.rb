# frozen_string_literal: true

class FamilyRelation < Relation
  validate :first_mount, :mounts_must_have_same_family
  validate :second_mount, :mounts_must_have_same_family

  def parent
    first_mount
  end

  def child
    second_mount
  end

  private def mounts_must_have_same_family
    if first_mount.generation.family != second_mount.generation.family
      errors.add(:mount_families, "Family members must share the same race")
    end
  end
end
