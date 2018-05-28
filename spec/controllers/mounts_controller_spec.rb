# frozen_string_literal: true

require "rails_helper"

RSpec.describe MountsController, type: :controller do
  describe "#index" do
    it "fetches all mounts" do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it "fetches one mount" do
      get :show, params: { id: 1 }
      expect(response).to have_http_status(:ok)
    end
  end
end
