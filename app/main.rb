require 'opal'
require 'jquery'
require 'opal-jquery'

require 'user'

Document.ready? do
  Element['#rb-outlet'].html = "Hello from Opal!"

  user = User.new('Bob')
  puts user
  puts user.admin?
end
