# frozen_string_literal: true

class MountsController < ApplicationController
  def index
    @mounts = Mount.page(page_number).per(page_size)
    render json: @mounts
  end

  def show
    @mount = Mount.find(params.require(:id))
    render json: @mount
  end

  def create
  end

  def update
  end

  def destroy
  end
end
