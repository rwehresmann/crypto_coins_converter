require './lib/coin_market_cap/coin_extracter'

task update_coins: :environment do
  coins = CoinMarketCap::CoinExtracter.call

  coins.each do |coin|
    Coin.find_or_create_by(
      coin_market_cap_id: coin['id'],
      name: coin['name'],
      abreviation: coin['symbol']
    )
  end
end
