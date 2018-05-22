# frozen_string_literal: true

class MountsController < ApplicationController
  def index
    mounts = Breeding::Mount::Index.run!(page_number: page_number, page_size: page_size)
    render json: mounts
  end

  def show
    mount = Breeding::Mount::Show.run!(id: params.require(:id))
    render json: mount
  end

  def create
    mount = Breeding::Mount::Create.run!(create_mount_params)
    render json: mount
  end

  def update
  end

  def destroy
    Breeding::Mount::Destroy.run!(id: params.require(:id))
  end

  private def create_mount_params
    ActiveModelSerializers::Deserialization.jsonapi_parse!(params, only: [:name, :sexe, :generation])
  end
end
