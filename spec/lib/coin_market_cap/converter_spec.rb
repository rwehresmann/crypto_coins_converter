require 'rails_helper'

describe CoinMarketCap::Converter do
  describe '.call' do
    it "converts the value of the coin_to_convert to the desired_coin" do
      json = JSON.parse(File.read("./spec/fixtures/currency_list.json"))
      coin_to_convert, desired_coin = Coin.select(:coin_market_cap_id).sample(2)
      quantity = rand(1..100)

      value = described_class.call(
        coin_to_convert: coin_to_convert,
        desired_coin: desired_coin,
        quantity: quantity
      )

      expect(value.is_a? Numeric).to be_truthy
    end
  end
end
