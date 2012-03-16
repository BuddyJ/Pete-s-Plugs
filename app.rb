require 'rubygems'
require 'sinatra'

get '/?' do
	erb :index
end

get '/store' do
	erb :store
end

get '/faq' do
	erb :faq
end