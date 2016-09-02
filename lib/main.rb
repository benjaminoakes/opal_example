require 'opal'
require 'jquery'
require 'opal-jquery'
require 'hashie'

require 'user'

Document.ready? do
  Element['#rb-outlet'].html = "Hello from Opal!  (Click me!)"

  Element['#rb-outlet'].on(:click) do
    Element['#rb-outlet'].html = "Clicked!"
  end

  HTTP.get('main.js') do |response|
    puts "response.body: #{response.body.inspect}"
  end

  puts "{ :foo => 'bar' }.to_json: #{{ :foo => 'bar' }.to_json.inspect}"

  user = User.new('Bill')
  puts user
  puts user.admin?

  puts Time.now.strftime('%Y-%m-%d')

  a = (1..10).to_a.map { |i| i * 2 }
  puts "a: #{a.inspect}"

  mash = Hashie::Mash.new
  puts "mash.name?: #{ (mash.name?).inspect }"
  puts "mash.name: #{ (mash.name).inspect }"
  mash.name = "My Mash"
  puts "mash.name: #{ (mash.name).inspect }"
  puts "mash.name?: #{ (mash.name?).inspect }"
  # Doesn't work because Hashie uses mutable strings:
  #
  #     puts "mash.inspect: #{ (mash.inspect).inspect }"
end
