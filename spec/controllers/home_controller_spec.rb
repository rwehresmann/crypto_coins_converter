require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response.status).to eql(200)
    end
  end

  describe "POST #convert" do
    subject {
      post :convert, params: {
        currency: @currency,
        currency_destination: @currency_destination,
        quantity: @quantity
      }
    }

    before do
      json = JSON.parse(File.read("./spec/fixtures/currency_list.json"))
      @currency, @currency_destination = json['currency_list'].sample(2)
      @quantity = rand(1..9999)
    end

    it { expect(subject).to have_http_status(:success) }

    it "returns a numeric value" do
      value = JSON.parse(subject.body)['value']
      expect(value.is_a? Numeric).to be_truthy
    end
  end
end
