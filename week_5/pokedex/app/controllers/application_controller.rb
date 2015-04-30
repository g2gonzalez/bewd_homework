class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end


#https://www.codewithtarget.com/api/v1/heros/hero_id06cebdbd-4d4d-4e01-9e1e-335bf79e2f4b/quests/backend/1
#returns: 
=begin
{
message: "What's the URL of the API call that this web page made to get the REST resource that was the content for this question?"
}
=end
