class VotesController < ApplicationController

 def create
   voting_user = User.find_by(username: current_user.username)
   params[:button] == 'true' ? params[:button] = true : params[:button] = false
   @vote = Vote.create(user_id: voting_user.id, poll_id: params[:poll_id], vote: params[:button])
 end

end
