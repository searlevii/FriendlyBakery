require 'sinatra'
require 'sintra/reloader'

get '/' do
    erb :home
end
