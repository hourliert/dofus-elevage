# frozen_string_literal: true

class ApplicationController < ActionController::API
  def page
    @page ||= params.require(:page).permit!
  rescue ActionController::ParameterMissing
    @page ||= {}
  end

  def page_number
    page[:number]
  end

  def page_size
    page[:size]
  end
end
