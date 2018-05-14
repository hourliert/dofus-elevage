# frozen_string_literal: true

module Commands
  module Mount
    class Create < Mutations::Command
      required do
        string :name
        model :generation
        string :sexe, default: ::Mount::MALE, in: ::Mount::VALID_SEXES
      end

      def execute
        ::Mount.create!(name: name, generation: generation, sexe: sexe)
      end
    end
  end
end
