# frozen_string_literal: true

class RacesController < ApplicationController
  def index
    races = Genealogy::Race::Index.run!(page_number: page_number, page_size: page_size)
    render json: races
  end

  def show
    race = Genealogy::Race::Show.run!(id: params.require(:id))
    render json: race
  end
end
