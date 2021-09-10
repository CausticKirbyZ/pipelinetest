require "http/client"

uri = URI.parse("https://www.google.com")
client = HTTP::Client.new(uri)
page = client.get("/")
puts page.headers 