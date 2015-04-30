class MainframeController < ApplicationController

	def home
	end

	def login
	end

	def vault
		secret_code = 'demo'
		code_entered = params['password123'].to_s.downcase

		if code_entered == secret_code
			redirect_to "/super_secret"
		elsif code_entered != secret_code
			redirect_to "/failure"
		elsif code_entered == " "
			redirect_to "/failure"
		end
	end

	def super_secret
	end

	def failure
	end

end