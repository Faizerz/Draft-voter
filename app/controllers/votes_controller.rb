class VotesController < ApplicationController

 def create
   voting_user = User.find_by(username: current_user.username)
   params[:button] == 'true' ? params[:button] = true : params[:button] = false
   @vote = Vote.create(user_id: voting_user.id, poll_id: params[:poll_id], vote: params[:button])
   current_score = voting_user.score
   voting_user.update(score: (current_score+1))
 end

end
