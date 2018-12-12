require 'rails_helper'

RSpec.describe SponsorsController, type: :controller do
  describe "GET #index" do
    it "renders the index template" do 
      get :index

      assert_template "index"
    end
  end
end
