module ApplicationHelper
  def currency_select
    Coin.order(abreviation: :asc).each.inject([]) { |array, coin|
      array << ["#{coin.abreviation} (#{coin.name})", coin.coin_market_cap_id]
    }
  end

  def current_translations
    @translations ||= I18n.backend.send(:translations)
    @translations[I18n.locale].with_indifferent_access
  end
end
