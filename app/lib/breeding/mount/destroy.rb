# frozen_string_literal: true

module Breeding
  module Mount
    class Destroy < Mutations::Command
      required do
        integer :id
      end

      def execute
        mount = ::Mount.find(id)
        mount.destroy!
      end
    end
  end
end
