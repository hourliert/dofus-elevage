# frozen_string_literal: true

module Breeding
  module Mount
    class Show < Mutations::Command
      required do
        integer :id
      end

      def execute
        ::Mount.find(id)
      end
    end
  end
end
