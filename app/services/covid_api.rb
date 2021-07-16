require 'net/http'
require 'json'

class CovidApi
  def call_api(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
