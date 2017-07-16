class HomeController < ApplicationController
  include CoinMarketCap

  def index
  end

  def convert
    value = Converter.call(
      coin_to_convert: params[:currency],
      desired_coin: params[:currency_destination],
      quantity: params[:quantity].to_f
    )

    render json: { "value": value }
  end
end
