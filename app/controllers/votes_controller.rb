class VotesController < ApplicationController
  #POST /votes
  def create
    @topic = Topic.find(params[:topic_id])
    @topic.votes << Vote.new
    @topic.save!
    redirect_to topics_path
  end
end
