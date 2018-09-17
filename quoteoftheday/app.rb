require 'sinatra'

require_relative './src/quotes'

configure do
  set :server, :puma
  set :port, 3000
  set :bind, '0.0.0.0'
end

quotes_set = QuotesSet.new

get '/' do
  quotes_set.pick_random
end