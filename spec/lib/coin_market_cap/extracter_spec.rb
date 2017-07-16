require 'rails_helper'

describe CoinMarketCap::Extracter do
  describe '.call' do
    it "returns the coins informations" do
      coins = described_class.call

      expect(coins.class).to eq Array
      expect(coins).to_not be_empty
    end
  end
end
