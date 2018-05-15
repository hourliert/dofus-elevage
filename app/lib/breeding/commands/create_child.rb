# frozen_string_literal: true

module Breeding
  module Commands
    class CreateChild < Mutations::Command
      required do
        string :name
        model :generation
        model :father, class: Mount
        model :mother, class: Mount
      end

      optional do
        string :sexe, default: Mount::MALE, in: Mount::SEXES
      end

      def execute
        Mount.transaction do
          child = CreateMount.run!(name: name, generation: generation, sexe: sexe)
          ParentChildRelation.create!(first_mount: father, second_mount: child)
          ParentChildRelation.create!(first_mount: mother, second_mount: child)
          child
        end
      end
    end
  end
end
