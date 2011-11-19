require 'bundler'
Bundler.require

configure do |c|
  enable :sessions
  set :root, File.dirname(__FILE__)
  set :views, Proc.new{ File.join(root, "app/views")}
  set :scss, :style => :compact
end

Dir['./app/*/*.rb'].each {|file| require file}