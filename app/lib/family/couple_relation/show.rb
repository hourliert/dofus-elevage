# frozen_string_literal: true

module Family
  module CoupleRelation
    class Show < Mutations::Command
      required do
        integer :id
      end

      def execute
        ::CoupleRelation.find(id)
      end
    end
  end
end
