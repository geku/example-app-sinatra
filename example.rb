require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'haml'

class Example < Sinatra::Base
  get '/' do
    @env_vars = ENV
    @hostname = request.host

    haml :index
  end
end
