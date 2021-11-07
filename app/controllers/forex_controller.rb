class ForexController < ApplicationController

  def home
    render ({:template => "home.html.erb"})
  end

  def forexlist
    
    
    @currencies = Currencies.currency
    render({:template => "forexlist.html.erb"})
  end
  

  def convertlist
    @c1 = params.fetch("fromc1")
    @currencies = Currencies.currency
    render({:template => "fromc1.html.erb"})
  end


  def convertaction
    @c1 = params.fetch("fromc1")
    @c2 = params.fetch("toc2")
    url = "https://api.exchangerate.host/convert?from=#{@c1}&to=#{@c2}"
    data = open(url).read
    parsed_data = JSON.parse(data)
    @rate = parsed_data["info"]["rate"]
    render({ :template => "fromc1toc2.html.erb"})
  end
end
