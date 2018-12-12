require 'sinatra'

get '/' do
    erb :home
end

get '/about.erb' do
    erb :about
end

get '/contact.erb' do
    erb :contact
end

get 'cakes.erb' do
    erb :cakes
end

get 'cookies.erb' do
    erb :cookies
end

get 'muffins.erb' do
    erb :muffins
end