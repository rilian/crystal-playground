require "http"

client = HTTP::Client.new("0.0.0.0", 8080)

1000.times do |i|
  puts "[#{Time.now}] Sending #{i} request"
  response = client.get("/")
  puts "[#{Time.now}] Got response #{response.body}"
end

