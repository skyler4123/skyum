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

RSpec.describe "/payment_partners", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # PaymentPartner. As you add validations to PaymentPartner, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      PaymentPartner.create! valid_attributes
      get payment_partners_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      payment_partner = PaymentPartner.create! valid_attributes
      get payment_partner_url(payment_partner)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_payment_partner_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      payment_partner = PaymentPartner.create! valid_attributes
      get edit_payment_partner_url(payment_partner)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new PaymentPartner" do
        expect {
          post payment_partners_url, params: { payment_partner: valid_attributes }
        }.to change(PaymentPartner, :count).by(1)
      end

      it "redirects to the created payment_partner" do
        post payment_partners_url, params: { payment_partner: valid_attributes }
        expect(response).to redirect_to(payment_partner_url(PaymentPartner.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new PaymentPartner" do
        expect {
          post payment_partners_url, params: { payment_partner: invalid_attributes }
        }.to change(PaymentPartner, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post payment_partners_url, params: { payment_partner: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested payment_partner" do
        payment_partner = PaymentPartner.create! valid_attributes
        patch payment_partner_url(payment_partner), params: { payment_partner: new_attributes }
        payment_partner.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the payment_partner" do
        payment_partner = PaymentPartner.create! valid_attributes
        patch payment_partner_url(payment_partner), params: { payment_partner: new_attributes }
        payment_partner.reload
        expect(response).to redirect_to(payment_partner_url(payment_partner))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        payment_partner = PaymentPartner.create! valid_attributes
        patch payment_partner_url(payment_partner), params: { payment_partner: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested payment_partner" do
      payment_partner = PaymentPartner.create! valid_attributes
      expect {
        delete payment_partner_url(payment_partner)
      }.to change(PaymentPartner, :count).by(-1)
    end

    it "redirects to the payment_partners list" do
      payment_partner = PaymentPartner.create! valid_attributes
      delete payment_partner_url(payment_partner)
      expect(response).to redirect_to(payment_partners_url)
    end
  end
end