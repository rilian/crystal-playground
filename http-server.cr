require "http/server"

server = HTTP::Server.new(8080) do |request|
  puts "[#{Time.now}] Received request #{request}"
  HTTP::Response.ok "text/plain", "Hello world! The time is #{Time.now}"
end

puts "Listening on http://0.0.0.0:8080"
server.listen

