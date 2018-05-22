# frozen_string_literal: true

module Family
  module Child
    class Create < Mutations::Command
      required do
        string :name
        integer :generation_id
        integer :father_id
        integer :mother_id
        string :sexe, in: Mount::SEXES
      end

      def execute
        ::Mount.transaction do
          child = Breeding::Mount::Create.run!(name: name, generation_id: generation_id, sexe: sexe)
          Family::CoupleRelation::Create.run!(husband_id: father_id, spouse_id: mother_id)
          Family::ParentRelation::Create.run!(parent_id: father_id, child_id: child.id)
          Family::ParentRelation::Create.run!(parent_id: mother_id, child_id: child.id)
          child
        end
      end
    end
  end
end
