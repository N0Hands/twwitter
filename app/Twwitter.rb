require 'sinatra'


class Twitter < Sinatra::Base
	set :views, File.join(File.dirname(__FILE__), '..', 'views')
	get '/' do
		
		erb :index
	end
end
