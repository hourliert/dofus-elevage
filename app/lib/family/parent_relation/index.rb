# frozen_string_literal: true

module Family
  module ParentRelation
    class Index < Mutations::Command
      optional do
        integer :page_number
        integer :page_size
      end

      def execute
        ::ParentRelation.page(page_number).per(page_size)
      end
    end
  end
end
