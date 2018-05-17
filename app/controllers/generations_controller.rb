# frozen_string_literal: true

class GenerationsController < ApplicationController
  def index
    @generations = Generation.page(page_number).per(page_size)
    render json: @generations
  end

  def show
    @generation = Generation.find(params.require(:id))
    render json: @generation
  end
end
