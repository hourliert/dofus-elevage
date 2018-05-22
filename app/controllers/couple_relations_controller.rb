# frozen_string_literal: true

class CoupleRelationsController < ApplicationController
  def index
    relations = Family::CoupleRelation::Index.run!(page_number: page_number, page_size: page_size)
    render json: relations
  end

  def show
    relation = Family::CoupleRelation::Show.run!(id: params.require(:id))
    render json: relation
  end

  def create
    relation = Family::CoupleRelation::Create.run!(relation_params)
    render json: relation
  end

  def update
  end

  def destroy
    Family::CoupleRelation::Destroy.run!(id: params.require(:id))
  end

  private def relation_params
    ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:husband, :spouse])
  end
end
