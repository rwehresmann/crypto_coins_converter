module CoinMarketCap
  class Extracter
    def self.call
      res = RestClient.get("https://api.coinmarketcap.com/v1/ticker/")
      JSON.parse(res.body)
    end
  end
end
