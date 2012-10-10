require "spec_helper"

describe PecasController do
  describe "routing" do

    it "routes to #index" do
      get("/pecas").should route_to("pecas#index")
    end

    it "routes to #new" do
      get("/pecas/new").should route_to("pecas#new")
    end

    it "routes to #show" do
      get("/pecas/1").should route_to("pecas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pecas/1/edit").should route_to("pecas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pecas").should route_to("pecas#create")
    end

    it "routes to #update" do
      put("/pecas/1").should route_to("pecas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pecas/1").should route_to("pecas#destroy", :id => "1")
    end

  end
end
