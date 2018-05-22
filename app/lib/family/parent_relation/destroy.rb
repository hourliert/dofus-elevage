# frozen_string_literal: true

module Family
  module ParentRelation
    class Destroy < Mutations::Command
      required do
        integer :id
      end

      def execute
        mount = ::ParentRelation.find(id)
        mount.destroy!
      end
    end
  end
end
