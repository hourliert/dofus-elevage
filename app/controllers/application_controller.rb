# frozen_string_literal: true

class ApplicationController < ActionController::API
  def page_number
    page[:number]
  end

  def page_size
    page[:size]
  end

  private def page
    @page ||= params.require(:page).permit!
  rescue ActionController::ParameterMissing
    @page ||= {}
  end
end
