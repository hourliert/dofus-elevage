# frozen_string_literal: true

class GenerationsController < ApplicationController
  def index
    generations = Genealogy::Generation::Index.run!(page_number: page_number, page_size: page_size)
    render json: generations
  end

  def show
    generation = Genealogy::Generation::Show.run!(id: params.require(:id))
    render json: generation
  end
end
