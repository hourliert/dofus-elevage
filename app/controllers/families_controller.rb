# frozen_string_literal: true

class FamiliesController < ApplicationController
  def index
    @families = Family.page(page_number).per(page_size)
    render json: @families
  end

  def show
    @family = Family.find(params.require(:id))
    render json: @family
  end
end
