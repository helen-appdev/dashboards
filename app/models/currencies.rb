class Currencies
  def Currencies.currency
    url = "https://api.exchangerate.host/symbols"
    data = open(url).read
    pd = JSON.parse(data)   
    current = pd["symbols"].keys
    currency= Array.new
    current.each do |this|
      currency.push(this)
    end
  return currency
  end
end
