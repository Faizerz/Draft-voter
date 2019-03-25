class PollsController < ApplicationController
 def index
   @polls = Poll.all
 end

 def show
   @poll = Poll.find(params[:id])
 end

 def new
   @poll = Poll.new
 end

 def create
   @poll = Poll.create(poll_params)

   redirect_to @poll
 end

 private

 def poll_params
   params.require(:poll).permit(:user_id, :question, :answer_one, :answer_two)
 end
end
