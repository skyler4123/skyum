require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/shop_owners", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ShopOwner. As you add validations to ShopOwner, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ShopOwner.create! valid_attributes
      get shop_owners_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      shop_owner = ShopOwner.create! valid_attributes
      get shop_owner_url(shop_owner)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_shop_owner_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      shop_owner = ShopOwner.create! valid_attributes
      get edit_shop_owner_url(shop_owner)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ShopOwner" do
        expect {
          post shop_owners_url, params: { shop_owner: valid_attributes }
        }.to change(ShopOwner, :count).by(1)
      end

      it "redirects to the created shop_owner" do
        post shop_owners_url, params: { shop_owner: valid_attributes }
        expect(response).to redirect_to(shop_owner_url(ShopOwner.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ShopOwner" do
        expect {
          post shop_owners_url, params: { shop_owner: invalid_attributes }
        }.to change(ShopOwner, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post shop_owners_url, params: { shop_owner: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested shop_owner" do
        shop_owner = ShopOwner.create! valid_attributes
        patch shop_owner_url(shop_owner), params: { shop_owner: new_attributes }
        shop_owner.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the shop_owner" do
        shop_owner = ShopOwner.create! valid_attributes
        patch shop_owner_url(shop_owner), params: { shop_owner: new_attributes }
        shop_owner.reload
        expect(response).to redirect_to(shop_owner_url(shop_owner))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        shop_owner = ShopOwner.create! valid_attributes
        patch shop_owner_url(shop_owner), params: { shop_owner: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested shop_owner" do
      shop_owner = ShopOwner.create! valid_attributes
      expect {
        delete shop_owner_url(shop_owner)
      }.to change(ShopOwner, :count).by(-1)
    end

    it "redirects to the shop_owners list" do
      shop_owner = ShopOwner.create! valid_attributes
      delete shop_owner_url(shop_owner)
      expect(response).to redirect_to(shop_owners_url)
    end
  end
end
