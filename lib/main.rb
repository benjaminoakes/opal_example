require 'opal'
require 'jquery'
require 'opal-jquery'

require 'user'

Document.ready? do
  Element['#rb-outlet'].html = "Hello from Opal!"

  user = User.new('Bill')
  puts user
  puts user.admin?

  puts Time.now.strftime('%Y-%m-%d')
end
