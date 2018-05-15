# frozen_string_literal: true

class Relation < ApplicationRecord
  belongs_to :first_mount, class_name: "Mount"
  belongs_to :second_mount, class_name: "Mount"
end
