require 'opal'
require 'jquery'
require 'opal-jquery'
require 'hashie'

require 'user'

Document.ready? do
  Element['#rb-outlet'].html = "Hello from Opal!"

  user = User.new('Bill')
  puts user
  puts user.admin?

  puts Time.now.strftime('%Y-%m-%d')

  mash = Hashie::Mash.new
  puts "mash.name?: #{ (mash.name?).inspect }"
  puts "mash.name: #{ (mash.name).inspect }"
  mash.name = "My Mash"
  puts "mash.name: #{ (mash.name).inspect }"
  puts "mash.name?: #{ (mash.name?).inspect }"
  # puts "mash.inspect: #{ (mash.inspect).inspect }"
end
