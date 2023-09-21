require "rails_helper"

RSpec.describe PaymentPartnersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/payment_partners").to route_to("payment_partners#index")
    end

    it "routes to #new" do
      expect(get: "/payment_partners/new").to route_to("payment_partners#new")
    end

    it "routes to #show" do
      expect(get: "/payment_partners/1").to route_to("payment_partners#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/payment_partners/1/edit").to route_to("payment_partners#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/payment_partners").to route_to("payment_partners#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/payment_partners/1").to route_to("payment_partners#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/payment_partners/1").to route_to("payment_partners#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/payment_partners/1").to route_to("payment_partners#destroy", id: "1")
    end
  end
end
