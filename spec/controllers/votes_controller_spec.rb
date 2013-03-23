require 'spec_helper'

describe VotesController do
  before do
    @topic = Topic.create
    post :create, :topic_id => @topic.id
  end
  
  it "finds a topic by ID" do
    expect(assigns(:topic)).to eq(@topic)
  end
  
  it "increments a topic's votes" do
    expect(assigns(:topic).votes.count).to eq(1)
  end
  
  it "redirects to the topics index" do
    expect(response).to redirect_to(topics_path)
  end
end
