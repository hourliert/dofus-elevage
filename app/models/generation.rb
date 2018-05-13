# frozen_string_literal: true

class Generation < ApplicationRecord
  belongs_to :family
  has_many :mounts

  def tutu; end

  def toto
    tutu
  end
end
