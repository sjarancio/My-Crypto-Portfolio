class HomeController < ApplicationController
  def index
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=89c05170-722e-4b74-85e7-012df26e1894&start=1&limit=5000&convert=USD'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC", "ETH", "ADA", "BNB", "SOL", "XRP", "DOT", "LINK", "ALGO", "AVAX", "LTC", "ATOM", "MATIC", "XLM", "VET", "XMR", "THETA", "AAVE", "USDT", "BCH", "DOGE", "FIL", "TRX", "XTZ", "ETC"]
  end

  def about

  end

  def lookup
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=89c05170-722e-4b74-85e7-012df26e1894&start=1&limit=5000&convert=USD'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)


    @symbol = params[:symbol]

    if @symbol
      @symbol = @symbol.upcase
    end

    if @symbol == ""
      @symbol = "You did not enter a currency!"
    end
  end
end
