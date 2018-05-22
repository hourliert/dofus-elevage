# frozen_string_literal: true

class ParentRelationSerializer < ApplicationSerializer
  attributes :id, :parent, :child
end
