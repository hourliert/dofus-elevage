# frozen_string_literal: true

module Family
  module CoupleRelation
    class Create < Mutations::Command
      required do
        integer :husband_id
        integer :spouse_id
      end

      def execute
        ::CoupleRelation.create!(first_mount: husband, second_mount: spouse)
      end

      def husband
        Breeding::Mount::Show.run!(id: husband_id)
      end

      def spouse
        Breeding::Mount::Show.run!(id: spouse_id)
      end
    end
  end
end
