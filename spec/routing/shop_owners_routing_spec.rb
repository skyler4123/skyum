require "rails_helper"

RSpec.describe ShopOwnersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/shop_owners").to route_to("shop_owners#index")
    end

    it "routes to #new" do
      expect(get: "/shop_owners/new").to route_to("shop_owners#new")
    end

    it "routes to #show" do
      expect(get: "/shop_owners/1").to route_to("shop_owners#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/shop_owners/1/edit").to route_to("shop_owners#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/shop_owners").to route_to("shop_owners#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/shop_owners/1").to route_to("shop_owners#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/shop_owners/1").to route_to("shop_owners#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/shop_owners/1").to route_to("shop_owners#destroy", id: "1")
    end
  end
end
