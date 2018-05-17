# frozen_string_literal: true

class FamilyRelation < Relation
  # first_mount will be the parent
  # second_mount will be the child
  validate :first_mount, :mounts_must_have_same_family
  validate :second_mount, :mounts_must_have_same_family

  private def mounts_must_have_same_family
    if first_mount.generation.family != second_mount.generation.family
      errors.add(:mount_families, "Family members must share the same race")
    end
  end
end
