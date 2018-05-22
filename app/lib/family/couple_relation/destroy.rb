# frozen_string_literal: true

module Family
  module CoupleRelation
    class Destroy < Mutations::Command
      required do
        integer :id
      end

      def execute
        mount = ::CoupleRelation.find(id)
        mount.destroy!
      end
    end
  end
end
