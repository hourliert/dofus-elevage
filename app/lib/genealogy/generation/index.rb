# frozen_string_literal: true

module Genealogy
  module Generation
    class Index < Mutations::Command
      optional do
        integer :page_number
        integer :page_size
      end

      def execute
        ::Generation.page(page_number).per(page_size)
      end
    end
  end
end
