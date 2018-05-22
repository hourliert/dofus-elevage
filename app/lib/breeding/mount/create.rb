# frozen_string_literal: true

module Breeding
  module Mount
    class Create < Mutations::Command
      required do
        string :name
        integer :generation_id
        string :sexe, in: ::Mount::SEXES
      end

      def execute
        ::Mount.create!(name: name, generation_id: generation_id, sexe: sexe)
      end
    end
  end
end
