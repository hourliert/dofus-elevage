# frozen_string_literal: true

module Family
  module ParentRelation
    class Create < Mutations::Command
      required do
        integer :parent_id
        integer :child_id
      end

      def execute
        ::ParentRelation.create!(first_mount: parent, second_mount: child)
      end

      def parent
        Breeding::Mount::Show.run!(id: parent_id)
      end

      def child
        Breeding::Mount::Show.run!(id: child_id)
      end
    end
  end
end
