require 'rest-client'
require 'json'

module CoinMarketCap
  class Converter
    def self.call(coin_to_convert:, desired_coin:, quantity:)
      begin
        values = [coin_to_convert, desired_coin].each.inject([]) do |array, coin|
          res = RestClient.get("https://api.coinmarketcap.com/v1/ticker/#{coin}/")
          array << JSON.parse(res.body).first['price_btc'].to_f
        end

        (values[0] * quantity.to_f).fdiv(values[1])
      rescue Exception => e
        puts e.message
        'Problem in conversion.'
      end
    end
  end
end
