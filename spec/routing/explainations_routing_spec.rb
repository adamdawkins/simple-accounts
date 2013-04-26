require "spec_helper"

describe ExplainationsController do
  describe "routing" do

    it "routes to #index" do
      get("/explainations").should route_to("explainations#index")
    end

    it "routes to #new" do
      get("/explainations/new").should route_to("explainations#new")
    end

    it "routes to #show" do
      get("/explainations/1").should route_to("explainations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/explainations/1/edit").should route_to("explainations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/explainations").should route_to("explainations#create")
    end

    it "routes to #update" do
      put("/explainations/1").should route_to("explainations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/explainations/1").should route_to("explainations#destroy", :id => "1")
    end

  end
end
