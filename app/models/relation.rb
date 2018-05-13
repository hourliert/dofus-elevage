# frozen_string_literal: true

class Relation < ApplicationRecord
  belongs_to :parent, class_name: "Mount"
  belongs_to :child, class_name: "Mount"
end
