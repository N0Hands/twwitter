require 'sinatra'


class Twitter < Sinatra::Base
	set :views, File.join(File.dirname(__FILE__), '..', 'views')
	get '/' do
		
		erb :index
	end

	get '/sign_up_page' do

	end

	post '/sign_up_page' do
		url = params['url']
		title = params ['title']

		Account.create(:username => username, :email => email, :name => name, :password => password)

		redirect to ('/')
	end

end
