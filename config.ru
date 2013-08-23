require 'rubygems'
require 'bundler'
Bundler.require(:default)
require 'sinatra'

require 'json'

require 'sass/plugin/rack'
require './lib/compass_plugin'

require './app'



# use coffeescript for javascript
use Rack::Coffee, root: 'app', urls: '/javascripts'

run App

