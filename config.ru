require 'rubygems'
require 'bundler'
Bundler.require :default

require 'net/http'
require './app'

use Rack::SSL if ENV['RACK_ENV'] == 'production'
run Sinatra::Application