require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index

      expect(response.status).to eql(200)
    end
  end

  describe "POST #convert" do
    it "returns a numeric value" do
      post :convert, params: {
        currency: "ethereum",
        currency_destination: "bitcoin",
        quantity: 1
      }

      expect(response.status).to eq 200
      value = JSON.parse(response.body)['value']
      expect(value.is_a? Numeric).to be_truthy
    end
  end
end
