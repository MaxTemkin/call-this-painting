require 'sinatra'
require 'twilio-ruby'

get '/painting/:name' do
	#Figure out which painting is being called
	response = Twilio::TwiML::Response.new do |r|
		r.Say "Thank you for calling a painting in the Cards Against Humanity gallery."
	    r.Play "https://s3.amazonaws.com/call-this-painting/#{params[:name]}.mp3"
	end

	response.text
end