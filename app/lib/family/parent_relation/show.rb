# frozen_string_literal: true

module Family
  module ParentRelation
    class Show < Mutations::Command
      required do
        integer :id
      end

      def execute
        ::ParentRelation.find(id)
      end
    end
  end
end
