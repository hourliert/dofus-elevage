# frozen_string_literal: true

class ParentRelationsController < ApplicationController
  def index
    relations = Family::ParentRelation::Index.run!(page_number: page_number, page_size: page_size)
    render json: relations
  end

  def show
    relation = Family::ParentRelation::Show.run!(id: params.require(:id))
    render json: relation
  end

  def create
    relation = Family::ParentRelation::Create.run!(relation_params)
    render json: relation
  end

  def update
  end

  def destroy
    Family::ParentRelation::Destroy.run!(id: params.require(:id))
  end

  private def relation_params
    ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:parent, :child])
  end
end
