class VotesController < ApplicationController
  def create
    voting_user = User.find_by(username: current_user.username)
    # poll_creator = User.find_by(username: poll.username)
    params[:button] = params[:button] == 'true'
    @vote = Vote.create(user_id: voting_user.id, poll_id: params[:poll_id], vote: params[:button])
    current_score = voting_user.score
    voting_user.update(score: (current_score + 2))
    # poll_creator.update(score: (current_score + 1))
  end
end
