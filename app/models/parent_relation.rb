# frozen_string_literal: true

class ParentRelation < Relation
  belongs_to :first_mount, class_name: "Mount", inverse_of: :parent_child_relations
  belongs_to :second_mount, class_name: "Mount", inverse_of: :child_parent_relations

  validate :first_mount, :mounts_have_same_race
  validates :first_mount, uniqueness: { scope: :second_mount, message: "This relation already exist" }

  def parent
    first_mount
  end

  def child
    second_mount
  end

  private def mounts_have_same_race
    if parent.generation.race_id != child.generation.race_id
      errors.add(:mount_races, "Family members must share the same race")
    end
  end
end
