require 'sinatra'

computers = ['rock', 'paper', 'scissors']		#initialize array

get '/' do																	#set home path
	@computer = computers.shuffle().first()		#grab random option for computer choice
	erb :home
end

get '/winner' do														#set winner path
	@user_choice = params[:user_choice]
	@comp_choice = params[:comp_choice]
	erb :result
end