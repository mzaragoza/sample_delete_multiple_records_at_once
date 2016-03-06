require 'spec_helper'

describe PagesController, type: :controller do
  context "index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
