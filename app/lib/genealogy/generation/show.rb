# frozen_string_literal: true

module Genealogy
  module Generation
    class Show < Mutations::Command
      required do
        integer :id
      end

      def execute
        ::Generation.find(id)
      end
    end
  end
end
