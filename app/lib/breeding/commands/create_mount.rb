# frozen_string_literal: true

module Breeding
  module Commands
    class CreateMount < Mutations::Command
      required do
        string :name
        model :generation
      end

      optional do
        string :sexe, default: Mount::MALE, in: Mount::SEXES
      end

      def execute
        Mount.create!(name: name, generation: generation, sexe: sexe)
      end
    end
  end
end
