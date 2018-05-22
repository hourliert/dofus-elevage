# frozen_string_literal: true

module Breeding
  module Mount
    class Index < Mutations::Command
      optional do
        integer :page_number
        integer :page_size
      end

      def execute
        ::Mount.page(page_number).per(page_size)
      end
    end
  end
end
