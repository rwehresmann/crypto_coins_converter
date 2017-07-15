require 'rails_helper'
require './lib/coin_market_cap/coin_extracter'

describe CoinMarketCap::CoinExtracter do
  describe '.call' do
    it "returns the coins informations" do
      coins = described_class.call

      expect(coins.class).to eq Array
      expect(coins).to_not be_empty
    end
  end
end
