require 'spec_helper'

describe TopicsController do
  describe 'GET /index' do
    it "show a list of votes" do
      topic1 = Topic.create
      topic2 = Topic.create
      
      get :index
      expect(assigns(:topics)).to match_array([ topic1, topic2 ])
    end
  end  
end
