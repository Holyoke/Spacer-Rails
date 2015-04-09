require 'rails_helper'
require 'json'

RSpec.describe MessagesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Message. As you add validations to Message, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MessagesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all messages as @messages" do
      message = Message.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:messages)).to eq([message])
    end
  end

  describe "GET show" do
    it "assigns the requested message as @message" do
      message = Message.create! valid_attributes
      get :show, {:id => message.to_param}, valid_session
      expect(assigns(:message)).to eq(message)
    end
  end

  describe "GET new" do
    it "assigns a new message as @message" do
      get :new, {}, valid_session
      expect(assigns(:message)).to be_a_new(Message)
    end
  end

  describe "GET edit" do
    it "assigns the requested message as @message" do
      message = Message.create! valid_attributes
      get :edit, {:id => message.to_param}, valid_session
      expect(assigns(:message)).to eq(message)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Message" do
        expect {
          post :create, {:message => valid_attributes}, valid_session
        }.to change(Message, :count).by(1)
      end

      it "assigns a newly created message as @message" do
        post :create, {:message => valid_attributes}, valid_session
        expect(assigns(:message)).to be_a(Message)
        expect(assigns(:message)).to be_persisted
      end

      it "redirects to the created message" do
        post :create, {:message => valid_attributes}, valid_session
        expect(response).to redirect_to(Message.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved message as @message" do
        post :create, {:message => invalid_attributes}, valid_session
        expect(assigns(:message)).to be_a_new(Message)
      end

      it "re-renders the 'new' template" do
        post :create, {:message => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested message" do
        message = Message.create! valid_attributes
        put :update, {:id => message.to_param, :message => new_attributes}, valid_session
        message.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested message as @message" do
        message = Message.create! valid_attributes
        put :update, {:id => message.to_param, :message => valid_attributes}, valid_session
        expect(assigns(:message)).to eq(message)
      end

      it "redirects to the message" do
        message = Message.create! valid_attributes
        put :update, {:id => message.to_param, :message => valid_attributes}, valid_session
        expect(response).to redirect_to(message)
      end
    end

    describe "with invalid params" do
      it "assigns the message as @message" do
        message = Message.create! valid_attributes
        put :update, {:id => message.to_param, :message => invalid_attributes}, valid_session
        expect(assigns(:message)).to eq(message)
      end

      it "re-renders the 'edit' template" do
        message = Message.create! valid_attributes
        put :update, {:id => message.to_param, :message => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested message" do
      message = Message.create! valid_attributes
      expect {
        delete :destroy, {:id => message.to_param}, valid_session
      }.to change(Message, :count).by(-1)
    end

    it "redirects to the messages list" do
      message = Message.create! valid_attributes
      delete :destroy, {:id => message.to_param}, valid_session
      expect(response).to redirect_to(messages_url)
    end
  end

end
