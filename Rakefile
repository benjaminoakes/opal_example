require 'fileutils'
require 'opal'
require 'opal-jquery'

desc 'Build our app to public/main.js'
task :build do
  Opal.append_path 'app'
  Opal.append_path 'vendor'
  FileUtils.mkdir_p 'public'
  File.binwrite 'public/main.js', Opal::Builder.build('main').to_s
end