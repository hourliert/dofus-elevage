# frozen_string_literal: true

class Generation < ApplicationRecord
  belongs_to :family
  has_many :mounts, dependent: :destroy
end
