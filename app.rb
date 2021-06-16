#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter:"sqlite3", database:"pizzashop.db"}

class Product < ActiveRecord::Base
end

def str_tohash
	@input =	@order.delete('product_')
	@arr = @input.split(/[=,]/)
	@order_h = Hash.new
		@arr.each_slice(2) do |k, v|
			if  v != nil
			key = k.strip.to_i
			value = v.strip.to_i
			@order_h[key] = value
			end
		end
end


get '/' do
	@product = Product.all
	erb :index			
end

post '/cart' do
	@order = params[:order]
	str_tohash	
	erb :cart
end

get '/about' do
	erb :about
end