require "rails_helper"

RSpec.describe BankDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/bank_details").to route_to("bank_details#index")
    end

    it "routes to #new" do
      expect(:get => "/bank_details/new").to route_to("bank_details#new")
    end

    it "routes to #show" do
      expect(:get => "/bank_details/1").to route_to("bank_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bank_details/1/edit").to route_to("bank_details#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/bank_details").to route_to("bank_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bank_details/1").to route_to("bank_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bank_details/1").to route_to("bank_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bank_details/1").to route_to("bank_details#destroy", :id => "1")
    end
  end
end
