require 'spec_helper'
require './lib/currency'

describe Currency do
  describe '.convert' do
    it "converts" do
      json = JSON.parse(File.read("./spec/fixtures/currency_list.json"))
      currency, currency_destination = json['currency_list'].sample(2)
      quantity = rand(1..9999)

      value = Currency::convert(currency, currency_destination, quantity)
      expect(value.is_a? Numeric).to eql(true)
    end
  end
end
