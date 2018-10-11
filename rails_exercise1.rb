require 'HTTP'

response = HTTP.get("http://localhost:3000/beer")
data = response.parse