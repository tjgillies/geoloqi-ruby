# Bundler.setup
require 'rubygems'
require './lib/geoloqi.rb'
require 'minitest/autorun'
require 'wrong'
require 'wrong/adapters/minitest'
require 'webmock'

CLIENT_ID = 'client_id1234'
CLIENT_SECRET = 'client_secret1234'
ACCESS_TOKEN = 'access_token1234'

def auth_headers(access_token='access_token1234')
  {'Content-Type' => 'application/json',
   'User-Agent' => "geoloqi-ruby #{Geoloqi.version}",
   'Accept' => 'application/json',
   'Authorization' => "OAuth #{access_token}"}
end

def api_url(path); "#{Geoloqi.api_url}/#{Geoloqi.api_version}/#{path}" end

Wrong.config.alias_assert :expect
include WebMock::API