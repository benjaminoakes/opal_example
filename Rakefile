require 'fileutils'
require 'opal'
require 'opal-jquery'

require 'opal/rspec/rake_task'
Opal::RSpec::RakeTask.new('opal_spec') do |server, task|
  server.append_path 'lib'
end

desc 'Build our app to public/main.js'
task :build do
  Opal.append_path 'lib'
  Opal.append_path 'vendor'
  Opal.append_path '/var/lib/gems/2.3.0/gems/hashie-3.4.4/lib'
  FileUtils.mkdir_p 'public'
  File.binwrite 'public/main.js', Opal::Builder.build('main').to_s
end

require 'rspec/core/rake_task'

desc "Run the specs."
RSpec::Core::RakeTask.new('spec') do |t|
  t.pattern = "spec/**_spec.rb"
end
