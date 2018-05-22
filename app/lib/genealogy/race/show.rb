# frozen_string_literal: true

module Genealogy
  module Race
    class Show < Mutations::Command
      required do
        integer :id
      end

      def execute
        ::Race.find(id)
      end
    end
  end
end
