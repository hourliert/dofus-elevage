# frozen_string_literal: true

module Breeding
  module Commands
    class CreateCouple < Mutations::Command
      required do
        model :father, class: Mount
        model :mother, class: Mount
      end

      def execute
        FatherMotherRelation.create!(first_mount: father, second_mount: mother)
      end
    end
  end
end
