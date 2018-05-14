# frozen_string_literal: true

class Relation < ApplicationRecord
  belongs_to :mount
  belongs_to :related, class_name: "Mount"
end
