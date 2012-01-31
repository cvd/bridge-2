require "spec_helper"

describe ReseearchersController do
  describe "routing" do

    it "routes to #index" do
      get("/reseearchers").should route_to("reseearchers#index")
    end

    it "routes to #new" do
      get("/reseearchers/new").should route_to("reseearchers#new")
    end

    it "routes to #show" do
      get("/reseearchers/1").should route_to("reseearchers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reseearchers/1/edit").should route_to("reseearchers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reseearchers").should route_to("reseearchers#create")
    end

    it "routes to #update" do
      put("/reseearchers/1").should route_to("reseearchers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reseearchers/1").should route_to("reseearchers#destroy", :id => "1")
    end

  end
end
