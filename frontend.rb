require 'unirest'

response = Unirest.get("localhost:3000/weather")

p response.body